//
//  ViewController.m
//  chuyingwang
//
//  Created by 白洪坤 on 16/5/23.
//  Copyright © 2016年 白洪坤. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad{
    [super viewDidLoad];

    self.view.backgroundColor = [UIColor blackColor];

    // 0.一些固定的尺寸参数
    CGFloat imageW = self.scrollview.frame.size.width;
    CGFloat imageH = self.scrollview.frame.size.height;
    CGFloat imageX = 0;
    
    // 1.添加图片到scrollView中
    for (int i = 0; i<3; i++) {
        UIImageView *imageView = [[UIImageView alloc] init];
        
        // 设置frame
        CGFloat imageY = i * imageH;
        imageView.frame = CGRectMake(imageX, imageY, imageW, imageH);
        
        // 设置图片
        NSString *name = [NSString stringWithFormat:@"i%d", i + 1];
        imageView.image = [UIImage imageNamed:name];
        
        [self.scrollview addSubview:imageView];
    }
    // 2.设置内容尺寸
    CGFloat contentY = 3 * imageH;
    self.scrollview.contentSize = CGSizeMake(0, contentY);
    
    // 3.隐藏垂直滚动条
    self.scrollview.showsVerticalScrollIndicator = NO;
    
    // 4.分页
    self.scrollview.pagingEnabled = YES;
}

- (void)viewWillAppear:(BOOL)animated{
    
}

- (UIStatusBarStyle)preferredStatusBarStyle{
    
    return UIStatusBarStyleLightContent;
    
}
@end
