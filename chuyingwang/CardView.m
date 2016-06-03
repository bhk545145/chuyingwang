//
//  CardView.m
//  ZLSwipeableViewDemo
//
//  Created by Zhixuan Lai on 11/1/14.
//  Copyright (c) 2014 Zhixuan Lai. All rights reserved.
//

#import "CardView.h"

@interface CardView (){
    //项目图片
    UIButton *projectbtn;
    //项目名称
    UIButton *projectNamebtn;
    //融资状态
    UIButton *financingStatusbtn;
    //融资进度
    UILabel *financingStatuslab;
    //项目介绍
    UILabel *projectIntroductionlab;
    //阅读和收藏
    UILabel *readingCollection;
    //融资进度表
    //GoalBar
    UIImage *iCardimg;
    NSString *Cardstr;
}
//项目卡片
@property(nonatomic,strong)UIImageView *ProjectCard;
@end

@implementation CardView

- (instancetype)initWithFrame:(CGRect)frame setiCardimg:(UIImage *)icardimg setCardstr:(NSString *)cardstr{
    self = [super initWithFrame:frame];
    if (self) {
        iCardimg = icardimg;
        Cardstr = cardstr;
        self.ProjectCard = [[UIImageView alloc]initWithFrame:frame];
        self.ProjectCard.backgroundColor = [UIColor whiteColor];
        [self addSubview:self.ProjectCard];
        
        projectbtn = [[UIButton alloc]initWithFrame:CGRectMake(0, 0, self.ProjectCard.bounds.size.width, self.ProjectCard.bounds.size.height/2)];
        [self.ProjectCard addSubview:projectbtn];
        
        projectNamebtn = [[UIButton alloc]initWithFrame:CGRectMake(0, projectbtn.bounds.size.height - 40, projectbtn.bounds.size.width, 40)];
        [projectbtn addSubview:projectNamebtn];
        
        financingStatusbtn = [[UIButton alloc]initWithFrame:CGRectMake(100, 250, 70, 22)];
        [self.ProjectCard addSubview:financingStatusbtn];
        
        financingStatuslab = [[UILabel alloc]initWithFrame:CGRectMake(100, 300, 100, 22)];
        [self.ProjectCard addSubview:financingStatuslab];
         
        [self setup];
    }
    return self;
}


- (void)setup {
    self.layer.shadowColor = [UIColor blackColor].CGColor;
    self.layer.shadowOpacity = 0.33;
    self.layer.shadowOffset = CGSizeMake(0, 1.5);
    self.layer.shadowRadius = 4.0;
    self.layer.shouldRasterize = YES;
    self.layer.rasterizationScale = [UIScreen mainScreen].scale;
    self.layer.cornerRadius = 10.0;
    
    [projectbtn setBackgroundImage:iCardimg forState:UIControlStateNormal];
    [projectNamebtn setBackgroundImage:[UIImage imageNamed:@"black_pic"] forState:UIControlStateNormal];
    [projectNamebtn setTitle:Cardstr forState:UIControlStateNormal];
    projectNamebtn.titleLabel.font = [UIFont fontWithName:@"Arial Rounded MT Bold" size:13.0];
    [projectNamebtn setTitleShadowColor:[UIColor whiteColor] forState:UIControlStateNormal];
    
    [financingStatusbtn setBackgroundImage:[UIImage imageNamed:@"financing_status"] forState:UIControlStateNormal];
    [financingStatusbtn setTitle:@"股权融资中" forState:UIControlStateNormal];
    [financingStatusbtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    financingStatusbtn.titleLabel.font = [UIFont fontWithName:@"Arial Rounded MT Bold" size:10.0];
    
}

@end
