//
//  projectTableViewCell.m
//  chuyingwang
//
//  Created by bai on 16/5/28.
//  Copyright © 2016年 白洪坤. All rights reserved.
//

#import "projectTableViewCell.h"
#import "CardModel.h"
#import "bhkCommon.h"
#import "UIButton+WebCache.h"
#import "PublicTool.h"

@implementation projectTableViewCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)setCardModel:(CardModel *)CardModel{
    _CardModel = CardModel;
    [self.projectbtn sd_setBackgroundImageWithURL:[NSURL URLWithString:_CardModel.iCardimg] forState:UIControlStateDisabled];
    
    [self.projectNamebtn setTitle:_CardModel.Cardstr forState:UIControlStateNormal];
    
    [self.financingStatusbtn setTitle:_CardModel.financingStatus forState:UIControlStateNormal];
    
    self.financingStatusProgress.progress = _CardModel.financingStatusPercentage;
    self.financingStatusProgress.transform = CGAffineTransformMakeScale(1.0f,5.0f);
    
    self.projectIntroductionlab.text = _CardModel.projectIntroduction;
    self.projectIntroductionlab.textColor = IWcolor(135, 135, 135);
    self.projectIntroductionlab.backgroundColor = IWcolor(244, 244, 244);
    
    self.readingCollection.text = [NSString stringWithFormat:@"阅读(%ld)  收藏(%ld)",(long)_CardModel.reading,(long)_CardModel.collection];
}


@end
