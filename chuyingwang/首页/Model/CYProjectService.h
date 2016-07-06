//
//  CYProjectService.h
//  chuyingwang
//
//  Created by 白洪坤 on 16/7/6.
//  Copyright © 2016年 白洪坤. All rights reserved.
//

#import <Foundation/Foundation.h>

@class CardModel;

@interface CYProjectService : NSObject

+ (CYProjectService *)shareInstance;

/**
 *  项目数据写入数据库
 *
 *  @param CardModel 项目模型
 *  @param block     返回数据
 */
- (void)inserinto:(CardModel *)CardModel withBlock:(void(^)(BOOL bRet, NSArray *array, NSString *msg))block;
@end
