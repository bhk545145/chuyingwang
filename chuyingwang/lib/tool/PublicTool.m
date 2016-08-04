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

//根据宽度等比例改变图片
+ (UIImage *)scaleImage:(UIImage *)image withWidth:(CGFloat)width
{
    float widthScale = image.size.width /width;
    UIImage *newImage = [UIImage imageWithCGImage:[image CGImage] scale:widthScale orientation:UIImageOrientationUp];
    return newImage;
}
//根据高度等比例改变图片
+ (UIImage *)scaleImage:(UIImage *)image withHeight:(CGFloat)height
{
    float heightScale = image.size.height / height;
    UIImage *newImage = [UIImage imageWithCGImage:[image CGImage] scale:heightScale orientation:UIImageOrientationUp];
    return newImage;
}
//根据Size改变图片
+ (UIImage *)scaleImage:(UIImage *)image toSize:(CGSize)size
{
    CGFloat ratio = size.height / size.width;
    CGFloat widthScale = size.width / image.size.width;
    CGFloat heightScale = size.height / (image.size.height * ratio);
    UIGraphicsBeginImageContext(CGSizeMake(image.size.width * widthScale, image.size.height * heightScale));
    [image drawInRect:CGRectMake(0.0f, 0.0f, image.size.width * widthScale, image.size.height * heightScale)];
    UIImage *scaledImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    CGRect rect = CGRectMake(0.0f, 0.0f, size.width, size.height);
    CGImageRef sourceImageRef = [scaledImage CGImage];
    CGImageRef newImageRef = CGImageCreateWithImageInRect(sourceImageRef, rect);
    UIImage *newImage = [UIImage imageWithCGImage:newImageRef];
    CGImageRelease(newImageRef);
    
    return newImage;
}

//按限制长度截取字符串
+ (NSString *)cutString:(NSString *)str withMaxByteLength:(NSUInteger)length
{
    if (length <= 0)
    {
        return nil;
    }
    NSString *returnString = [[NSString alloc] initWithString:str];
    while (1)
    {
        if ([returnString dataUsingEncoding:NSUTF8StringEncoding].length > length)
        {
            returnString = [returnString substringToIndex:returnString.length - 1];
        }
        else
        {
            break;
        }
    }
    return returnString;
}

/**
 *  设置textField左边leftView的图片
 *
 *  @param image     图片
 *  @param highImage 高亮图片
 *
 *  @return imageView
 */
+ (UIImageView *)setTextFieldimageView:(NSString *)image HighImage:(NSString *)highImage{
    UIImageView *imageView = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, 30, 20)];
    [imageView setImage:[UIImage imageNamed:image]];
    [imageView setHighlightedImage:[UIImage imageNamed:highImage]];
    imageView.highlighted = YES;
    imageView.contentMode = UIViewContentModeScaleAspectFit;
    return imageView;
}

@end
