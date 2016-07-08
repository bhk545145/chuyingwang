//
//  PublicTool.m
//  chuyingwang
//
//  Created by 白洪坤 on 16/7/1.
//  Copyright © 2016年 白洪坤. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PublicTool.h"
#import "CardModel.h"

@implementation PublicTool

/**
 *  数组转模型数组
 *
 *  @param array 获取的数据数组
 *
 *  @return 模型数组
 */
+ (NSMutableArray *)cardModelarray:(NSArray *)array{
    NSMutableArray *Cardarray = [[NSMutableArray alloc]init];
    for (NSDictionary *dict in array) {
        CardModel *cardModel = [CardModel DeviceinfoWithDict:dict];
        [Cardarray addObject:cardModel];
    }
    return Cardarray;
}

//输出frame
+ (void)printFrame:(CGRect)frame
{
    NSLog(@"Frame: x %.0f y %.0f w %.0f h %.0f", frame.origin.x, frame.origin.y, frame.size.width, frame.size.height);
}

@end
