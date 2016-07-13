//
//  CardView.m
//  ZLSwipeableViewDemo
//
//  Created by Zhixuan Lai on 11/1/14.
//  Copyright (c) 2014 Zhixuan Lai. All rights reserved.
//

#import "CardView.h"
#import "bhkCommon.h"
#import "CardModel.h"
#import "ProgressView.h"

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
    ProgressView *financingStatusProgress;
    
}
//项目卡片
@property(nonatomic,strong)UIImageView *ProjectCard;
@end

@implementation CardView

- (instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
        self.ProjectCard = [[UIImageView alloc]initWithFrame:frame];
        self.ProjectCard.backgroundColor = [UIColor whiteColor];
        [self addSubview:self.ProjectCard];
        
        CGFloat ProjectCardwidth = self.ProjectCard.bounds.size.width;
        CGFloat ProjectCardheight = self.ProjectCard.bounds.size.height;
        
        projectbtn = [[UIButton alloc]initWithFrame:CGRectMake(0, 0, ProjectCardwidth, ProjectCardheight/2)];
        //[self.ProjectCard addSubview:projectbtn]; 不可触发点击事件
        [self addSubview:projectbtn];
        
        projectNamebtn = [[UIButton alloc]initWithFrame:CGRectMake(0, ProjectCardheight/2 - 40, ProjectCardwidth, 40)];
        projectNamebtn.titleLabel.font = [UIFont fontWithName:@"Arial Rounded MT Bold" size:13.0];
        [projectNamebtn setTitleShadowColor:[UIColor whiteColor] forState:UIControlStateNormal];
        projectNamebtn.userInteractionEnabled = NO;
        [projectbtn addSubview:projectNamebtn];
        
        financingStatusbtn = [[UIButton alloc]initWithFrame:CGRectMake(90, ProjectCardheight/2 + 30, 70, 22)];
        [financingStatusbtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        financingStatusbtn.titleLabel.font = [UIFont fontWithName:@"Arial Rounded MT Bold" size:11.0];
        [self.ProjectCard addSubview:financingStatusbtn];
        
        financingStatuslab = [[UILabel alloc]initWithFrame:CGRectMake(100, ProjectCardheight/2 + 55, 100, 22)];
        financingStatuslab.font = [UIFont fontWithName:@"Arial Rounded MT Bold" size:11.0];
        [self.ProjectCard addSubview:financingStatuslab];
        
        CGFloat financingStatusProgressWidth = self.frame.size.width/3;
        financingStatusProgress = [[ProgressView alloc]initWithFrame:CGRectMake(200, ProjectCardheight/2 +10, financingStatusProgressWidth, financingStatusProgressWidth)];
        financingStatusProgress.arcBackColor = IWcolor(253, 201, 24);
        financingStatusProgress.arcFinishColor = IWcolor(40, 82, 135);
        financingStatusProgress.arcUnfinishColor = IWcolor(40, 82, 135);
        financingStatusProgress.width = 20;
        [self.ProjectCard addSubview:financingStatusProgress];
        
        projectIntroductionlab = [[UITextView alloc]initWithFrame:CGRectMake(25,ProjectCardheight - 80,ProjectCardwidth - 50, 40)];
        projectIntroductionlab.font = [UIFont fontWithName:@"Arial Rounded MT Bold" size:11.0];
        projectIntroductionlab.textColor = IWcolor(135, 135, 135);
        projectIntroductionlab.backgroundColor = IWcolor(244, 244, 244);
        [self.ProjectCard addSubview:projectIntroductionlab];
        
        readingCollection = [[UILabel alloc]initWithFrame:CGRectMake(20, ProjectCardheight - 40, ProjectCardwidth - 50, 40)];
        readingCollection.font = [UIFont fontWithName:@"Arial Rounded MT Bold" size:11.0];
        readingCollection.textColor = IWcolor(83, 83, 83);
        [self.ProjectCard addSubview:readingCollection];
        
    }
    return self;
}

- (void)setCardModel:(CardModel *)CardModel{
    _CardModel = CardModel;
    [self setup];
}


- (void)setup {
    self.layer.shadowColor = [UIColor blackColor].CGColor;
    self.layer.shadowOpacity = 0.33;
    self.layer.shadowOffset = CGSizeMake(0, 1.5);
    self.layer.shadowRadius = 4.0;
    self.layer.shouldRasterize = YES;
    self.layer.rasterizationScale = [UIScreen mainScreen].scale;
    self.layer.cornerRadius = 10.0;
    
    [projectbtn setBackgroundImage:[UIImage imageNamed:_CardModel.iCardimg] forState:UIControlStateNormal];
    [projectbtn addTarget:self action:@selector(projectbtnClick:) forControlEvents:UIControlEventTouchUpInside];
    
    [projectNamebtn setBackgroundImage:[UIImage imageNamed:@"black_pic"] forState:UIControlStateNormal];
    [projectNamebtn setTitle:_CardModel.Cardstr forState:UIControlStateNormal];
    
    
    [financingStatusbtn setBackgroundImage:[UIImage imageNamed:@"financing_status"] forState:UIControlStateNormal];
    [financingStatusbtn setTitle:_CardModel.financingStatus forState:UIControlStateNormal];
    
    financingStatuslab.text = [NSString stringWithFormat:@"已完成%1.0f%%",_CardModel.financingStatusPercentage*100];
    
    financingStatusProgress.percent = _CardModel.financingStatusPercentage;
    
    projectIntroductionlab.text = _CardModel.projectIntroduction;
    
    readingCollection.text = [NSString stringWithFormat:@"阅读(%ld)  收藏(%ld)",(long)_CardModel.reading,(long)_CardModel.collection];
}
//CardView点击事件
- (void)projectbtnClick:(UIButton *)btn{
    if ([self.delegate respondsToSelector:@selector(CardModelbtn:)]) {
        [self.delegate CardModelbtn:_CardModel];
    }
}
@end
