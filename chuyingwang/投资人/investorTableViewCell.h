//
//  investorTableViewCell.h
//  chuyingwang
//
//  Created by 白洪坤 on 16/6/2.
//  Copyright © 2016年 白洪坤. All rights reserved.
//

#import <UIKit/UIKit.h>
@class InvestorModel;
@interface investorTableViewCell : UITableViewCell

@property(nonatomic,strong)InvestorModel *InvestorModel;

@property (weak, nonatomic) IBOutlet UIImageView *investorheadimage;
@property (weak, nonatomic) IBOutlet UILabel *investorName;
@property (weak, nonatomic) IBOutlet UILabel *investorCompany;
@property (weak, nonatomic) IBOutlet UILabel *investorFollow;
- (IBAction)lookHome:(id)sender;
@end
