//
//  PublicTool.h
//  chuyingwang
//
//  Created by 白洪坤 on 16/7/1.
//  Copyright © 2016年 白洪坤. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PublicTool : NSObject

/**
 *  数组转模型数组
 *
 *  @param array 获取的数据数组
 *
 *  @return 模型数组
 */
+ (NSMutableArray *)cardModelarray:(NSArray *)array;
//输出frame
+ (void)printFrame:(CGRect)frame;
//根据宽度等比例改变图片
+ (UIImage *)scaleImage:(UIImage *)image withWidth:(CGFloat)width;
//根据高度等比例改变图片
+ (UIImage *)scaleImage:(UIImage *)image withHeight:(CGFloat)height;
@end
