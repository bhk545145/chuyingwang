//
//  DBHelp.m
//  chuyingwang
//
//  Created by 白洪坤 on 16/7/4.
//  Copyright © 2016年 白洪坤. All rights reserved.
//

#import "DBHelp.h"
#import "FMDatabase.h"
#import "bhkCommon.h"
#import "Table.h"

@implementation DBHelp

static DBHelp *sharedManager=nil;
static dispatch_once_t onceToken;

+(DBHelp *)shareInstance
{
    dispatch_once(&onceToken, ^{
        sharedManager = [[DBHelp alloc]init];
    });
    
    return sharedManager;
}

-(void)dealloc
{
    
}

-(id)init
{
    if (self=[super init])
    {
        NSFileManager *fm = [NSFileManager defaultManager];
        NSString *dbPath=[NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) lastObject];
        dbPath = [dbPath stringByAppendingPathComponent:CY_DB_NAME];
        NSLog(@"%@",dbPath);
        if(![fm fileExistsAtPath:dbPath])
        {
            [fm createFileAtPath:dbPath contents:nil attributes:nil];
        }
        self.dbQueue = [FMDatabaseQueue databaseQueueWithPath:dbPath];
        [self updateTables:CY_DB_NEWVERSION];
    }
    
    return self;
}


-(void)getCurrentDbVersionWithBlock:(void(^)(BOOL bRet, int version))block
{
    [_dbQueue inDatabase:^(FMDatabase *db) {
        
        NSString *sql = [NSString stringWithFormat:@"PRAGMA user_version"];
        FMResultSet *rs = [db executeQuery:sql];
        
        int nVersion = 0;
        
        while ([rs next])
        {
            nVersion = [rs intForColumn:@"user_version"];
        }
        [rs close];
        rs = nil;
        
        if ([db hadError])
        {
            DLog(@"get db version Err %d: %@", [db lastErrorCode], [db lastErrorMessage]);
            block(NO,-1);
            return;
        }
        
        block(YES,nVersion);
    }];
}

-(void)getCurrentDbVersion:(FMDatabase *)db withBlock:(void(^)(BOOL bRet, int version))block
{
    NSString *sql = [NSString stringWithFormat:@"PRAGMA user_version"];
    FMResultSet *rs = [db executeQuery:sql];
    
    int nVersion = 0;
    
    while ([rs next])
    {
        nVersion = [rs intForColumn:@"user_version"];
    }
    [rs close];
    rs = nil;
    
    if ([db hadError])
    {
        DLog(@"get db version Err %d: %@", [db lastErrorCode], [db lastErrorMessage]);
        block(NO,-1);
        return;
    }
    
    block(YES,nVersion);
}

-(void)setNewDbVersion:(NSInteger)newVersion withBlock:(void(^)(BOOL bRet))block
{
    [_dbQueue inDatabase:^(FMDatabase *db) {
        
        NSString *sql = [NSString stringWithFormat:@"PRAGMA user_version = %ld",(long)newVersion];
        
        BOOL ret = [db executeUpdate:sql];
        
        if ([db hadError])
        {
            DLog(@"get db version Err %d: %@", [db lastErrorCode], [db lastErrorMessage]);
        }
        
        block(ret);
    }];
}

-(void)setNewDbVersion:(NSInteger)newVersion db:(FMDatabase *)db withBlock:(void(^)(BOOL bRet))block
{
    NSString *sql = [NSString stringWithFormat:@"PRAGMA user_version = %ld",(long)newVersion];
    
    BOOL ret = [db executeUpdate:sql];
    
    if ([db hadError])
    {
        DLog(@"get db version Err %d: %@", [db lastErrorCode], [db lastErrorMessage]);
    }
    
    block(ret);
}

-(void)updateTables:(NSInteger)dbNewVersion
{
    @synchronized(_dbQueue)
    {
        //执行数据库更新
        [_dbQueue inTransaction:^(FMDatabase *db, BOOL *rollback){
            
            //获取数据库版本号
            [self getCurrentDbVersion:db withBlock:^(BOOL bRet, int version) {
                
                if (bRet && (dbNewVersion > version || version == 0))
                {
                    [self executeSQLList:[self setSqlList] db:db withBlock:^(BOOL bRet, NSString *msg) {
                        
                        if (bRet)
                        {
                            //设置数据库版本号
                            [self setNewDbVersion:dbNewVersion db:db withBlock:^(BOOL bRet) {
                                
                                if (bRet)
                                {
                                    DLog(@"set new db version successfully!");
                                }
                            }];
                        }
                    }];
                }
            }];
        }];
    }
}

-(NSArray *)setSqlList
{
    NSArray *sqlList = @[
                         BL_TB_CREATE_DEVICEINFO
                         ];
    
    return sqlList;
}

/*
 *  @brief                              执行单个sql语句根据类型确定是否返回记录集
 *
 *  @param  sqlStr                      sql语句，select、update或者insert into语句
 *  @param  actionType                  表示操作的类型，CY_DB_SELECT：查询；CY_DB_INSERT：插入；CY_DB_UPDATE：更新；CY_DB_DELETE：删除；
 *                                      CY_DB_ADDUPDATE：更新或者插入（等同于CY_DB_INSERT和CY_DB_UPDATE）。
 *
 *  @param  block                       返回执行结果的block
 */
-(void)executeSQL:(NSString *)sqlStr actionType:(CY_DB_ActionType)actionType withBlock:(void(^)(BOOL bRet, FMResultSet *rs, NSString *msg))block
{
    @synchronized(_dbQueue)
    {
        [_dbQueue inDatabase:^(FMDatabase *db) {
            
            if (actionType == CY_DB_SELECT)//查询操作，返回记录集
            {
                FMResultSet *rs = [db executeQuery:sqlStr];
                if ([db hadError])
                {
                    block(NO, nil, [db lastErrorMessage]);
                    rs = nil;
                    DLog(@"executeSql Err %d: %@", [db lastErrorCode], [db lastErrorMessage]);
                }
                else
                {
                    block(YES, rs, nil);
                }
            }
            else//非查询操作，返回执行结果，布尔值
            {
                BOOL ret = [db executeUpdate:sqlStr];
                if ([db hadError])
                {
                    block(NO, nil, [db lastErrorMessage]);
                    DLog(@"executeSql Err %d: %@", [db lastErrorCode], [db lastErrorMessage]);
                }
                else
                {
                    block(ret, nil, nil);
                }
            }
        }];
    }
}

/*
 *  @brief                              批量处理更新或者新增sql语句，不需要返回记录集
 *
 *  @param  sqlStrList                  sql语句数组update或者insert into语句
 *  @param  db                          FMDatabase数据库对象
 *
 *  @param  block                       返回执行结果的block
 */
-(void)executeSQLList:(NSArray *)sqlStrList db:(FMDatabase *)db withBlock:(void(^)(BOOL bRet, NSString *msg))block
{
    __block BOOL bRet = NO;
    
    int i=0;
    for (NSString *sqlStr in sqlStrList)
    {
        bRet = [db executeUpdate:sqlStr];
        if ([db hadError])
        {
            block(bRet, [db lastErrorMessage]);
            DLog(@"executeSQLList Err %d: %@", [db lastErrorCode], [db lastErrorMessage]);
            break;
        }
        i++;
    }
    if (i == [sqlStrList count])
    {
        block(YES, nil);
    }
}

@end
