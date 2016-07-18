//
//  CYCollectButton.h
//  雏鹰网
//
//  Created by 白洪坤 on 16/7/18.
//  Copyright © 2016年 白洪坤. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CYCollectButton : UIButton
@property (nonatomic, strong) UITabBarItem *item;
// 是否已收藏
@property (nonatomic, assign) int isboolcollect;
@end
