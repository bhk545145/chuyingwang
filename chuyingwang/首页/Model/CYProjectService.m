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
#import "Table.h"
#import "CardModel.h"

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
    __block NSString *sqlstr = [NSString stringWithFormat:@"INSERT INTO %@ (name,team_num,team_intro,introduction,picture_path,detail,finish_financing_amount,total_financing_amount,collect) VALUES ('%@',%d,'%@','%@','%@','%@',%d,%d,%ld)",
                                CY_TB_PROJECTINFO,
                                CardModel.Cardstr,
                                3,
                                @"",
                                CardModel.projectIntroduction,
                                CardModel.iCardimg,
                                @"",
                                5000,
                                10000,
                                (long)CardModel.collection
    ];
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

//查找项目数据
- (void)selectProject:(CardModel *)CardModel withBlock:(void(^)(BOOL bRet, NSMutableArray *array, NSString *msg))block{
    __block NSString *sqlstr = [NSString stringWithFormat:@"SELECT * FROM %@",
                                CY_TB_PROJECTINFO
                    ];
    __block NSMutableArray *array;
    [[DBHelp shareInstance]executeSQL:sqlstr actionType:CY_DB_SELECT withBlock:^(BOOL bRet, FMResultSet *rs, NSString *msg) {
        if (bRet) {
            while ([rs next]) {
                [array addObject:rs];
            }
            [rs close];
            rs = nil;
            block(bRet,array,msg);
        }else{
            block(bRet,nil,msg);
        }
    }];
    
}
@end
