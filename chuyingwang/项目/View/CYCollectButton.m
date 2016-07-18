//
//  CYCollectButton.m
//  雏鹰网
//
//  Created by 白洪坤 on 16/7/18.
//  Copyright © 2016年 白洪坤. All rights reserved.
//

// 图标的比例
#define IWTabBarButtonImageRatio 0.6

#import "CYCollectButton.h"
#import "bhkCommon.h"

@implementation CYCollectButton

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // 图标居中
        self.imageView.contentMode = UIViewContentModeCenter;
        // 文字居中
        self.titleLabel.textAlignment = NSTextAlignmentCenter;
        // 字体大小
        self.titleLabel.font = [UIFont systemFontOfSize:11];
        
    }
    return self;
}

// 内部图片的frame
- (CGRect)imageRectForContentRect:(CGRect)contentRect
{
    CGFloat imageW = contentRect.size.width;
    CGFloat imageH = contentRect.size.height * IWTabBarButtonImageRatio;
    return CGRectMake(0, 0, imageW, imageH);
}

// 内部文字的frame
- (CGRect)titleRectForContentRect:(CGRect)contentRect
{
    CGFloat titleY = contentRect.size.height * IWTabBarButtonImageRatio - 20;
    CGFloat titleW = contentRect.size.width;
    CGFloat titleH = contentRect.size.height - titleY;
    return CGRectMake(0, titleY, titleW, titleH);
}

//收藏按钮样式
- (void)setuptitle:(NSString *)title titleColor:(UIColor *)titleColor NormalImage:(NSString *)NormalImage HighlightedImage:(NSString *)HighlightedImage{
    [self setTitle:title forState:UIControlStateNormal];
    [self setTitleColor:titleColor forState:UIControlStateNormal];
    [self setImage:[UIImage imageNamed:NormalImage] forState:UIControlStateNormal];
    [self setTitle:title forState:UIControlStateHighlighted];
    [self setTitleColor:titleColor forState:UIControlStateHighlighted];
    [self setImage:[UIImage imageNamed:HighlightedImage] forState:UIControlStateHighlighted];
}

- (void)setIsboolcollect:(int)isboolcollect{
    _isboolcollect = isboolcollect;
    if (isboolcollect)
        [self setuptitle:@"收藏" titleColor:[UIColor blackColor] NormalImage:@"star" HighlightedImage:@"star"];
    else
        [self setuptitle:@"已收藏" titleColor:IWcolor(248, 139, 0) NormalImage:@"star_yellow" HighlightedImage:@"star_yellow"];
}

@end
