//
//  MyTableViewController.h
//  chuyingwang
//
//  Created by 白洪坤 on 16/6/2.
//  Copyright © 2016年 白洪坤. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MyTableViewController : UITableViewController
- (IBAction)loginbtn:(id)sender;
@property (weak, nonatomic) IBOutlet UILabel *total_money;
@property (weak, nonatomic) IBOutlet UILabel *already_amount;
@property (weak, nonatomic) IBOutlet UILabel *out_amount;

@end
