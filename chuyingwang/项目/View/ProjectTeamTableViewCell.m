//
//  ProjectTeamTableViewCell.m
//  chuyingwang
//
//  Created by 白洪坤 on 16/7/15.
//  Copyright © 2016年 白洪坤. All rights reserved.
//

#import "ProjectTeamTableViewCell.h"
#import "bhkCommon.h"

@interface ProjectTeamTableViewCell (){
    
}
@property(nonatomic,strong)UIView *ProjectTeamView;
@end

@implementation ProjectTeamTableViewCell

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
        _ProjectTeamView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, UIScreenBounds.size.width, 100)];
        [self addSubview:_ProjectTeamView];
    }
    return self;
}

- (void)setCardModel:(CardModel *)CardModel{
    _CardModel = CardModel;
    [_ProjectTeamView setBackgroundColor:[UIColor yellowColor]];
}
@end
