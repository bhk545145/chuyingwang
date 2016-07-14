//
//  ProjectDetailsTableViewCell.m
//  chuyingwang
//
//  Created by 白洪坤 on 16/7/1.
//  Copyright © 2016年 白洪坤. All rights reserved.
//

#import "ProjectDetailsTableViewCell.h"
#import "CardModel.h"
#import "PublicTool.h"
#import "bhkCommon.h"

@interface ProjectDetailsTableViewCell(){
    //项目图片
    UIImageView *projectimageView;
    //项目名称
    UILabel *projectNamelab;
    //融资进度
    UILabel *financingStatuslab;
    //融资总额
    UILabel *totalFinancingAmountlab;
    //核心数据
    UITextView *projectCoreDatatxtView;
    //申请查看
    UIButton *requestbtn;
    
}

@end

@implementation ProjectDetailsTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
       
        projectimageView = [[UIImageView alloc]init];
        [projectimageView setContentMode:UIViewContentModeScaleAspectFill];
        projectimageView.clipsToBounds = YES;
        [self addSubview:projectimageView];
        
        projectNamelab = [[UILabel alloc]init];
        [self addSubview:projectNamelab];
        
        financingStatuslab = [[UILabel alloc]init];
        [self addSubview:financingStatuslab];
        
        totalFinancingAmountlab = [[UILabel alloc]init];
        [self addSubview:totalFinancingAmountlab];
        
        projectCoreDatatxtView = [[UITextView alloc]init];
        [self addSubview:projectCoreDatatxtView];
        
        requestbtn = [[UIButton alloc]init];
        [self addSubview:requestbtn];
    }
    return self;
}

- (void)setCardModel:(CardModel *)CardModel{
    _CardModel = CardModel;
    [self setup];
}

- (void)setup{
    UIImage *Projectimage = [UIImage imageNamed:_CardModel.iCardimg];
    Projectimage = [PublicTool scaleImage:Projectimage withWidth:UIScreenBounds.size.width];
    projectimageView.image = Projectimage;
     CGFloat projectimageViewHight = UIScreenBounds.size.width/Projectimagewidth * Projectimagehight;
    [projectimageView setFrame:CGRectMake(0, 0, UIScreenBounds.size.width, projectimageViewHight)];
    
    projectNamelab.text = _CardModel.Cardstr;
    projectNamelab.font = [UIFont fontWithName:@"HelveticaNeue" size:16.0f];
    CGSize projectimageViewsize = [projectNamelab.text sizeWithAttributes:[NSDictionary dictionaryWithObjectsAndKeys:projectNamelab.font,NSFontAttributeName, nil]];
    [projectNamelab setFrame:CGRectMake(5, projectimageViewHight + 5, projectimageViewsize.width, 50)];
    
    financingStatuslab.text = _CardModel.financingStatus;
    financingStatuslab.font = [UIFont fontWithName:@"HelveticaNeue" size:11.0f];
    [financingStatuslab setFrame:CGRectMake(projectNamelab.frame.size.width + 15, projectNamelab.frame.origin.y + 2, 150, 50)];
    
    totalFinancingAmountlab.text = @"募集资金 ¥ 60(万元)";
    totalFinancingAmountlab.font = [UIFont fontWithName:@"HelveticaNeue" size:13.0f];
    [totalFinancingAmountlab setFrame:CGRectMake(projectNamelab.frame.origin.x, projectNamelab.frame.origin.y +50, 150, 50)];
    
    projectCoreDatatxtView.text = @"您还无法查看项目核心数据，需要申请后方可查看";
    projectCoreDatatxtView.font = [UIFont fontWithName:@"HelveticaNeue" size:12.0f];
    CGSize projectCoreDatatxtViewsize = [projectCoreDatatxtView.text sizeWithAttributes:[NSDictionary dictionaryWithObjectsAndKeys:projectCoreDatatxtView.font,NSFontAttributeName, nil]];
    [projectCoreDatatxtView setFrame:CGRectMake(totalFinancingAmountlab.frame.origin.x + 50, totalFinancingAmountlab.frame.origin.y + 40, UIScreenBounds.size.width - 110, projectCoreDatatxtViewsize.height + 50)];
    
    [requestbtn setBackgroundImage:[UIImage imageNamed:@"black_pic"] forState:UIControlStateNormal];
    [requestbtn setTitle:@"申请查看" forState:UIControlStateNormal];
    [requestbtn setFrame:CGRectMake(projectCoreDatatxtView.frame.origin.x + 10, projectCoreDatatxtView.frame.origin.y +50, UIScreenBounds.size.width - 130, 30)];
}

@end
