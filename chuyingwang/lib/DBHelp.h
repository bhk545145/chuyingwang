//
//  DBHelp.h
//  chuyingwang
//
//  Created by 白洪坤 on 16/7/4.
//  Copyright © 2016年 白洪坤. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FMDatabaseQueue.h"

typedef enum CY_DB_ActionType
{
    CY_DB_SELECT = 0,//查询操作
    CY_DB_INSERT,	 //插入操作
    CY_DB_UPDATE,	 //更新操作
    CY_DB_DELETE,	 //删除操作
    CY_DB_ADDUPDATE	 //更新或者插入操作
} CY_DB_ActionType;

@class FMResultSet;

@interface DBHelp : NSObject

@property(nonatomic,strong) FMDatabaseQueue *dbQueue;

+(DBHelp *)shareInstance;

/*
 *  @brief                              执行单个sql语句根据类型确定是否返回记录集
 *
 *  @param  sqlStr                      sql语句，select、update或者insert into语句
 *  @param  actionType                  表示操作的类型，CY_DB_SELECT：查询；CY_DB_INSERT：插入；CY_DB_UPDATE：更新；CY_DB_DELETE：删除；
 *                                      CY_DB_ADDUPDATE：更新或者插入（等同于CY_DB_INSERT和CY_DB_UPDATE）。
 *
 *  @param  block                       返回执行结果的block
 */
-(void)executeSQL:(NSString *)sqlStr actionType:(CY_DB_ActionType)actionType withBlock:(void(^)(BOOL bRet, FMResultSet *rs, NSString *msg))block;

/*
 *  @brief                              批量处理更新或者新增sql语句，不需要返回记录集
 *
 *  @param  sqlStrList                  sql语句数组update或者insert into语句
 *  @param  db                          FMDatabase数据库对象
 *
 *  @param  block                       返回执行结果的block
 */
-(void)executeSQLList:(NSArray *)sqlStrList db:(FMDatabase *)db withBlock:(void(^)(BOOL bRet, NSString *msg))block;
@end
