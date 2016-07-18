//
//  CYTabbar.h
//  chuyingwang
//
//  Created by 白洪坤 on 16/7/16.
//  Copyright © 2016年 白洪坤. All rights reserved.
//

#import <UIKit/UIKit.h>
@class CYTabbar;
@protocol CYTabbarDelegate <NSObject>

@optional
- (void)tabBar:(CYTabbar *)tabBar didSelectedButtonFrom:(NSInteger)from to:(NSInteger)to;
- (void)tabBarDidClickedcollectButton:(CYTabbar *)tabBar;
@end
@interface CYTabbar : UIView
- (void)addTabBarButtonWithItem:(UITabBarItem *)item;

@property (nonatomic, weak) id<CYTabbarDelegate> delegate;
@end
