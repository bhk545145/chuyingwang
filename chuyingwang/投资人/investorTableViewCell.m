//
//  investorTableViewCell.m
//  chuyingwang
//
//  Created by 白洪坤 on 16/6/2.
//  Copyright © 2016年 白洪坤. All rights reserved.
//

#import "investorTableViewCell.h"
#import "InvestorModel.h"

@implementation investorTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)setInvestorModel:(InvestorModel *)InvestorModel{
    _InvestorModel = InvestorModel;
    self.investorheadimage.image = [UIImage imageNamed:_InvestorModel.investorheadimage];
    self.investorName.text = _InvestorModel.investorName;
    self.investorFollow.text = _InvestorModel.investorFollow;
    self.investorCompany.text = _InvestorModel.investorCompany;
}

- (IBAction)lookHome:(id)sender {
}
@end
