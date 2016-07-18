//
//  CYTabbarButton.m
//  chuyingwang
//
//  Created by 白洪坤 on 16/7/16.
//  Copyright © 2016年 白洪坤. All rights reserved.
//
// 图标的比例
#define IWTabBarButtonImageRatio 0.6

#import "CYTabbarButton.h"
#import "bhkCommon.h"

@implementation CYTabbarButton

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
        // 文字颜色
        [self setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [self setTitleColor:IWcolor(61, 168, 244) forState:UIControlStateSelected];
        [self setBackgroundImage:[UIImage imageNamed:@"tabbar_slider"] forState:UIControlStateSelected];

    }
    return self;
}


// 重写去掉高亮状态
- (void)setHighlighted:(BOOL)highlighted {}



// 设置item
- (void)setItem:(UITabBarItem *)item
{
    _item = item;
    
    // KVO 监听属性改变
    [item addObserver:self forKeyPath:@"title" options:0 context:nil];
    [item addObserver:self forKeyPath:@"image" options:0 context:nil];
    [item addObserver:self forKeyPath:@"selectedImage" options:0 context:nil];
    
    [self observeValueForKeyPath:nil ofObject:nil change:nil context:nil];
}

- (void)dealloc
{
    [self.item removeObserver:self forKeyPath:@"title"];
    [self.item removeObserver:self forKeyPath:@"image"];
    [self.item removeObserver:self forKeyPath:@"selectedImage"];
}

/**
 *  监听到某个对象的属性改变了,就会调用
 *
 *  @param keyPath 属性名
 *  @param object  哪个对象的属性被改变
 *  @param change  属性发生的改变
 */
- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context
{
    // 设置文字
    [self setTitle:self.item.title forState:UIControlStateSelected];
    [self setTitle:self.item.title forState:UIControlStateNormal];
    
    // 设置图片
    [self setImage:self.item.image forState:UIControlStateNormal];
    [self setImage:self.item.selectedImage forState:UIControlStateSelected];
}

@end
