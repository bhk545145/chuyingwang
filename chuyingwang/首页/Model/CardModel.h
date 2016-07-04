//
//  CardModel.h
//  chuyingwang
//
//  Created by bai on 16/6/4.
//  Copyright © 2016年 白洪坤. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CardModel : NSObject
//项目图片
@property(nonatomic,strong)NSString *iCardimg;
//项目名称
@property(nonatomic,strong)NSString *Cardstr;
//融资状态
@property(nonatomic,strong)NSString *financingStatus;
//融资进度
@property(nonatomic,assign)float financingStatusPercentage;
//项目介绍
@property(nonatomic,strong)NSString *projectIntroduction;
//阅读量
@property(nonatomic,assign)NSInteger reading;
//收藏量
@property(nonatomic,assign)NSInteger collection;

- (id)initWithDict:(NSDictionary *)dict;
+ (id)DeviceinfoWithDict:(NSDictionary *)dict;

@end
