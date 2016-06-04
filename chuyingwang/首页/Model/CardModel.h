//
//  CardModel.h
//  chuyingwang
//
//  Created by bai on 16/6/4.
//  Copyright © 2016年 白洪坤. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CardModel : NSObject

@property(nonatomic,strong)NSString *iCardimg;
@property(nonatomic,strong)NSString *Cardstr;
@property(nonatomic,strong)NSString *financingStatus;
@property(nonatomic,assign)float financingStatusPercentage;
@property(nonatomic,strong)NSString *projectIntroduction;
@property(nonatomic,assign)NSInteger reading;
@property(nonatomic,assign)NSInteger collection;

@end
