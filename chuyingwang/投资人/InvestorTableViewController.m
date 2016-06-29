//
//  InvestorTableViewController.m
//  chuyingwang
//
//  Created by 白洪坤 on 16/6/2.
//  Copyright © 2016年 白洪坤. All rights reserved.
//

#import "InvestorTableViewController.h"
#import "investorTableViewCell.h"
#import "bhkCommon.h"
#import "InvestorModel.h"


@interface InvestorTableViewController (){
    NSArray *investorarray;
}

@end

@implementation InvestorTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    if (IsiOS7Later) {
        //导航栏背景和字体颜色
        [self.navigationController.navigationBar setBarTintColor:IWcolor(193, 193, 193)];
        [self.navigationController.navigationBar setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:[UIColor blackColor],UITextAttributeTextColor,[UIFont fontWithName:@"Arial Rounded MT Bold" size:17.0],UITextAttributeFont,nil]];
    }
    investorarray = [NSArray arrayWithObjects:@"investor1",@"investor2", nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    [UIApplication sharedApplication].statusBarStyle=UIStatusBarStyleDefault;
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [investorarray count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *SimleTableIdentifier =@"reuseIdentifier";
    investorTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:SimleTableIdentifier];
    if (cell == nil) {
        NSArray *cells = [[NSBundle mainBundle]loadNibNamed:@"investorTableViewCell" owner:nil options:nil];
        cell = [cells lastObject];
    }
    NSString *investorheadstr = investorarray[indexPath.row];
    InvestorModel *investorModel = [[InvestorModel alloc]init];
    investorModel.investorheadimage = investorheadstr;
    investorModel.investorName = @"齐小吓";
    investorModel.investorFollow = @"香港新创有限公司   联合创始人";
    investorModel.investorCompany = @"关注：金融、新内容生态、消费互联网  偏好：A轮、B轮";
    cell.InvestorModel = investorModel;
    
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 285;
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
