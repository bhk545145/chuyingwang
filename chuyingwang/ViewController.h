//
//  ViewController.h
//  chuyingwang
//
//  Created by 白洪坤 on 16/5/23.
//  Copyright © 2016年 白洪坤. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ZLSwipeableView.h"

@interface ViewController : UIViewController <ZLSwipeableViewDataSource, ZLSwipeableViewDelegate>

@property (nonatomic, strong) ZLSwipeableView *swipeableView;
- (IBAction)topbtn:(id)sender;

- (UIView *)nextViewForSwipeableView:(ZLSwipeableView *)swipeableView;



@end

