//
//  CYProjectService.m
//  chuyingwang
//
//  Created by 白洪坤 on 16/7/6.
//  Copyright © 2016年 白洪坤. All rights reserved.
//

#import "CYProjectService.h"
#import "FMResultSet.h"
#import "DBHelp.h"

static CYProjectService *ProjectService = nil;

@interface CYProjectService (){
    
}

@end

@implementation CYProjectService



+ (CYProjectService *)shareInstance{
    if (ProjectService == nil) {
        ProjectService = [[CYProjectService alloc]init];
    }
    return ProjectService;
}

//项目数据写入数据库
- (void)inserinto:(CardModel *)CardModel withBlock:(void(^)(BOOL bRet, NSArray *array, NSString *msg))block{
    __block NSString *sqlstr = @"INSERT INTO";
    __block NSArray *array;
    [[DBHelp shareInstance]executeSQL:sqlstr actionType:CY_DB_INSERT withBlock:^(BOOL bRet, FMResultSet *rs, NSString *msg) {
        if (bRet) {
            block(bRet,array,msg);
        }else{
            block(bRet,nil,msg);
        }
    }];
}
//删

//改

//查
@end
