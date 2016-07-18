//
//  CYTabbar.m
//  chuyingwang
//
//  Created by 白洪坤 on 16/7/16.
//  Copyright © 2016年 白洪坤. All rights reserved.
//

#import "CYTabbar.h"
#import "CYTabbarButton.h"
#import "CYCollectButton.h"

@interface CYTabbar ()
@property (nonatomic, strong) NSMutableArray *tabBarButtons;
@property (nonatomic, weak) CYCollectButton *collectButton;
@property (nonatomic, weak) CYTabbarButton *selectedButton;

@end

@implementation CYTabbar

- (NSMutableArray *)tabBarButtons
{
    if (_tabBarButtons == nil) {
        _tabBarButtons = [NSMutableArray array];
    }
    return _tabBarButtons;
}

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"tabbar_background"]];
    }
    
    // 添加一个收藏按钮
    CYCollectButton *collectButton = [[CYCollectButton alloc] init];
    BOOL btnbool = 1;
    collectButton.isboolcollect = btnbool;
    [collectButton addTarget:self action:@selector(collectButtonClick) forControlEvents:UIControlEventTouchUpInside];
    [self addSubview:collectButton];
    self.collectButton = collectButton;
    return self;
}

- (void)addTabBarButtonWithItem:(UITabBarItem *)item
{
    // 1.创建按钮
    CYTabbarButton *button = [[CYTabbarButton alloc] init];
    [self addSubview:button];
    // 添加按钮到数组中
    [self.tabBarButtons addObject:button];
    
    // 2.设置数据
    button.item = item;
    
    // 3.监听按钮点击
    [button addTarget:self action:@selector(buttonClick:) forControlEvents:UIControlEventTouchDown];
    
    // 4.默认选中第0个按钮
    if (self.tabBarButtons.count == 1) {
        [self buttonClick:button];
    }
}

- (void)collectButtonClick
{
    if ([self.delegate respondsToSelector:@selector(tabBarDidClickedcollectButton:)]) {
        [self.delegate tabBarDidClickedcollectButton:self];
    }
    self.collectButton.isboolcollect = !self.collectButton.isboolcollect;
}

/**
 *  监听按钮点击
 */
- (void)buttonClick:(CYTabbarButton *)button
{
    // 1.通知代理
    if ([self.delegate respondsToSelector:@selector(tabBar:didSelectedButtonFrom:to:)]) {
        [self.delegate tabBar:self didSelectedButtonFrom:self.selectedButton.tag to:button.tag];
    }
    
    // 2.设置按钮的状态
    self.selectedButton.selected = NO;
    button.selected = YES;
    self.selectedButton = button;
}

- (void)layoutSubviews
{
    [super layoutSubviews];
    
    CGFloat h = self.frame.size.height;
    CGFloat w = self.frame.size.width;
    self.collectButton.frame = CGRectMake(0, 0, w / 7, 64);
    
    // 按钮的frame数据
    CGFloat buttonH = h;
    CGFloat buttonW = 2*w / 7;
    CGFloat buttonY = 0;
    
    for (int index = 0; index<self.tabBarButtons.count; index++) {
        // 1.取出按钮
        CYTabbarButton *button = self.tabBarButtons[index];
        
        // 2.设置按钮的frame
        CGFloat buttonX;
        if (index > 1) {
            buttonX += buttonW;
        }else{
            buttonX = self.collectButton.frame.size.width + index * buttonW;
        }
        button.frame = CGRectMake(buttonX, buttonY, buttonW, buttonH);
        
        // 3.绑定tag
        button.tag = index;
    }
}
@end
