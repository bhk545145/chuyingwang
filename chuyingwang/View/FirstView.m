//
//  FirstView.m
//  chuyingwang
//
//  Created by bai on 16/5/28.
//  Copyright © 2016年 白洪坤. All rights reserved.
//

#import "FirstView.h"

@interface FirstView (){
    
}
@property(strong,nonatomic) UIImageView *firstview;
@end


@implementation FirstView

- (instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
        _firstview = [[UIImageView alloc]initWithFrame:frame];
        [self addSubview:_firstview];
        _firstview.image = [UIImage imageNamed:@"firstview"];
    }
    return self;
}

@end
