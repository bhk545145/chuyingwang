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
        dbPath = [dbPath stringByAppendingPathComponent:@"chuyingfound.sqlite"];
        
        if(![fm fileExistsAtPath:dbPath])
        {
            [fm createFileAtPath:dbPath contents:nil attributes:nil];
        }
        self.dbQueue = [FMDatabaseQueue databaseQueueWithPath:dbPath];
//        [self updateTables:CY_DB_NEWVERSION];
    }
    
    return self;
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

@end
