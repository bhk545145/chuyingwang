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
    
}
//项目图片
@property(nonatomic,strong)UIImageView *projectimageView;
//项目名称
@property(nonatomic,strong)UILabel *projectNamelab;
//融资进度
@property(nonatomic,strong)UILabel *financingStatuslab;
//融资总额
@property(nonatomic,strong)UILabel *totalFinancingAmountlab;
//核心数据
@property(nonatomic,strong)UITextView *projectCoreDatatxtView;
//申请查看
@property(nonatomic,strong)UIButton *requestbtn;

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
       
        _projectimageView = [[UIImageView alloc]init];
        [_projectimageView setContentMode:UIViewContentModeScaleAspectFill];
        _projectimageView.clipsToBounds = YES;
        [self addSubview:_projectimageView];
        
        _projectNamelab = [[UILabel alloc]init];
        [self addSubview:_projectNamelab];
        
        _financingStatuslab = [[UILabel alloc]init];
        [self addSubview:_financingStatuslab];
        
        _totalFinancingAmountlab = [[UILabel alloc]init];
        [self addSubview:_totalFinancingAmountlab];
        
        _projectCoreDatatxtView = [[UITextView alloc]init];
        [self addSubview:_projectCoreDatatxtView];
        
        _requestbtn = [[UIButton alloc]init];
        [self addSubview:_requestbtn];
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
    _projectimageView.image = Projectimage;
     CGFloat projectimageViewHight = UIScreenBounds.size.width/Projectimagewidth * Projectimagehight;
    [_projectimageView setFrame:CGRectMake(0, 0, UIScreenBounds.size.width, projectimageViewHight)];
    
    _projectNamelab.text = _CardModel.Cardstr;
    _projectNamelab.font = [UIFont fontWithName:@"HelveticaNeue" size:16.0f];
    CGSize projectimageViewsize = [_projectNamelab.text sizeWithAttributes:[NSDictionary dictionaryWithObjectsAndKeys:_projectNamelab.font,NSFontAttributeName, nil]];
    [_projectNamelab setFrame:CGRectMake(5, projectimageViewHight + 5, projectimageViewsize.width, 50)];
    
    _financingStatuslab.text = _CardModel.financingStatus;
    _financingStatuslab.font = [UIFont fontWithName:@"HelveticaNeue" size:11.0f];
    [_financingStatuslab setFrame:CGRectMake(_projectNamelab.frame.size.width + 15, _projectNamelab.frame.origin.y + 2, 150, 50)];
    
    _totalFinancingAmountlab.text = @"募集资金 ¥ 60(万元)";
    _totalFinancingAmountlab.font = [UIFont fontWithName:@"HelveticaNeue" size:13.0f];
    [_totalFinancingAmountlab setFrame:CGRectMake(_projectNamelab.frame.origin.x, _projectNamelab.frame.origin.y +50, 150, 50)];
    
    _projectCoreDatatxtView.text = @"您还无法查看项目核心数据，需要申请后方可查看";
    _projectCoreDatatxtView.font = [UIFont fontWithName:@"HelveticaNeue" size:12.0f];
    _projectCoreDatatxtView.editable = NO;
    _projectCoreDatatxtView.selectable = NO;
    CGSize _projectCoreDatatxtViewsize = [_projectCoreDatatxtView.text sizeWithAttributes:[NSDictionary dictionaryWithObjectsAndKeys:_projectCoreDatatxtView.font,NSFontAttributeName, nil]];
    [_projectCoreDatatxtView setFrame:CGRectMake(_totalFinancingAmountlab.frame.origin.x + 50, _totalFinancingAmountlab.frame.origin.y + 40, UIScreenBounds.size.width - 110, _projectCoreDatatxtViewsize.height + 50)];
    
    [_requestbtn setBackgroundImage:[UIImage imageNamed:@"blue_pic"] forState:UIControlStateNormal];
    [_requestbtn setTitle:@"申请查看" forState:UIControlStateNormal];
    [_requestbtn setFrame:CGRectMake(_projectCoreDatatxtView.frame.origin.x + 10, _projectCoreDatatxtView.frame.origin.y +50, UIScreenBounds.size.width - 130, 30)];
}

@end
