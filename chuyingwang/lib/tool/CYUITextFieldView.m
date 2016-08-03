//
//  CYUITextFieldView.m
//  雏鹰网
//
//  Created by 白洪坤 on 16/8/3.
//  Copyright © 2016年 白洪坤. All rights reserved.
//

#import "CYUITextFieldView.h"

@implementation CYUITextFieldView

- (instancetype)initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    if (self) {
        UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 30, 20)];
        _leftImageView = [[UIImageView alloc] init];
        //        _leftImageView.image = [UIImage imageNamed:imageName];
        //        _leftImageView.highlightedImage = [UIImage imageNamed:highImageName];
        _leftImageView.highlighted = NO;
        _leftImageView.contentMode = UIViewContentModeCenter;
        _leftImageView.center = view.center;
        [view addSubview:_leftImageView];
        
        self.leftView = view;
        self.leftViewMode = UITextFieldViewModeAlways;
    }
    
    return self;
}

- (instancetype)init {
    self = [super init];
    if (self) {
        UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 30, 20)];
        _leftImageView = [[UIImageView alloc] init];
        _leftImageView.highlighted = NO;
        _leftImageView.contentMode = UIViewContentModeCenter;
        _leftImageView.center = view.center;
        [view addSubview:_leftImageView];
        
        self.leftView = view;
        self.leftViewMode = UITextFieldViewModeAlways;
    }
    
    return self;
}
@end
