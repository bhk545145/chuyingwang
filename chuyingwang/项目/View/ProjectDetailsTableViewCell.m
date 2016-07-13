//
//  ProjectDetailsTableViewCell.m
//  chuyingwang
//
//  Created by 白洪坤 on 16/7/1.
//  Copyright © 2016年 白洪坤. All rights reserved.
//

#import "ProjectDetailsTableViewCell.h"
#import "CardModel.h"

@interface ProjectDetailsTableViewCell(){
    //项目图片
    UIImageView *projectimage;
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
    UIProgressView *financingStatusProgress;
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
        projectimage = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, self.frame.size.width, 100)];
        [self addSubview:projectimage];
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
        projectimage = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, self.frame.size.width, 100)];
        [self addSubview:projectimage];
    }
    
    return self;
}

- (void)setCardModel:(CardModel *)CardModel{
    _CardModel = CardModel;
    [self setup];
}

- (void)setup{
    projectimage.image = [UIImage imageNamed:_CardModel.iCardimg];
}

@end
