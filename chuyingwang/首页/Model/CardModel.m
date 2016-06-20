//
//  CardModel.m
//  chuyingwang
//
//  Created by bai on 16/6/4.
//  Copyright © 2016年 白洪坤. All rights reserved.
//

#import "CardModel.h"

@implementation CardModel

- (id)initWithDict:(NSDictionary *)dict{ 
    if (self = [super init]) {
        _iCardimg = dict[@"iCardimg"];
        _Cardstr = dict[@"Cardstr"];
        _financingStatus = dict[@"financingStatus"];
        _financingStatusPercentage = [dict[@"financingStatusPercentage"]floatValue];
        _projectIntroduction = dict[@"projectIntroduction"];
        _reading = [dict[@"reading"]integerValue];
        _collection = [dict[@"collection"]integerValue];
    }
    return self;

}

+ (id)DeviceinfoWithDict:(NSDictionary *)dict{
    return [[self alloc] initWithDict:dict];
}
@end
