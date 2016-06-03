//
//  CardView.m
//  ZLSwipeableViewDemo
//
//  Created by Zhixuan Lai on 11/1/14.
//  Copyright (c) 2014 Zhixuan Lai. All rights reserved.
//

#import "CardView.h"
#import "bhkCommon.h"

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
    UITextView *projectIntroductionlab;
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
        projectNamebtn.titleLabel.font = [UIFont fontWithName:@"Arial Rounded MT Bold" size:13.0];
        [projectNamebtn setTitleShadowColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [projectbtn addSubview:projectNamebtn];
        
        financingStatusbtn = [[UIButton alloc]initWithFrame:CGRectMake(90, 260, 70, 22)];
        [financingStatusbtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        financingStatusbtn.titleLabel.font = [UIFont fontWithName:@"Arial Rounded MT Bold" size:10.0];
        [self.ProjectCard addSubview:financingStatusbtn];
        
        financingStatuslab = [[UILabel alloc]initWithFrame:CGRectMake(100, 285, 100, 22)];
        financingStatuslab.font = [UIFont fontWithName:@"Arial Rounded MT Bold" size:10.0];
        [self.ProjectCard addSubview:financingStatuslab];
        
        projectIntroductionlab = [[UITextView alloc]initWithFrame:CGRectMake(25, 350,self.ProjectCard.bounds.size.width - 50, 40)];
        projectIntroductionlab.font = [UIFont fontWithName:@"Arial Rounded MT Bold" size:11.0];
        projectIntroductionlab.textColor = IWcolor(135, 135, 135);
        projectIntroductionlab.backgroundColor = IWcolor(244, 244, 244);
        [self.ProjectCard addSubview:projectIntroductionlab];
        
        readingCollection = [[UILabel alloc]initWithFrame:CGRectMake(20, 400, self.ProjectCard.bounds.size.width - 50, 40)];
        readingCollection.font = [UIFont fontWithName:@"Arial Rounded MT Bold" size:11.0];
        readingCollection.textColor = IWcolor(83, 83, 83);
        [self.ProjectCard addSubview:readingCollection];
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
    
    
    [financingStatusbtn setBackgroundImage:[UIImage imageNamed:@"financing_status"] forState:UIControlStateNormal];
    [financingStatusbtn setTitle:@"股权融资中" forState:UIControlStateNormal];
    
    financingStatuslab.text = @"已完成25%";
    
    projectIntroductionlab.text = @"该项目由阿里系知名创业团队带领，团队协作力度和执行度都很优秀";
    
    readingCollection.text = [NSString stringWithFormat:@"阅读(%d)收藏(%d)",5,8];
}

@end
