//
//  ProjectIntroductionTableViewCell.m
//  chuyingwang
//
//  Created by 白洪坤 on 16/7/15.
//  Copyright © 2016年 白洪坤. All rights reserved.
//

#import "ProjectIntroductionTableViewCell.h"
#import "bhkCommon.h"

@interface ProjectIntroductionTableViewCell (){
    
}
@property(nonatomic,strong)UIView *ProjectIntroductionView;
@end

@implementation ProjectIntroductionTableViewCell

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
        _ProjectIntroductionView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, UIScreenBounds.size.width, 200)];
        [self addSubview:_ProjectIntroductionView];
    }
    return self;
}

- (void)setCardModel:(CardModel *)CardModel{
    _CardModel = CardModel;
    [_ProjectIntroductionView setBackgroundColor:[UIColor brownColor]];
}
@end
