//
//  MyTableViewController.m
//  chuyingwang
//
//  Created by 白洪坤 on 16/6/2.
//  Copyright © 2016年 白洪坤. All rights reserved.
//

#import "MyTableViewController.h"
#import "bhkCommon.h"
#import "LoginViewController.h"


@interface MyTableViewController (){
    NSDictionary *_dic;
}

@end

@implementation MyTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    if (IsiOS7Later) {
        //导航栏背景和字体颜色
        [self.navigationController.navigationBar setBarTintColor:IWcolor(193, 193, 193)];
        [self.navigationController.navigationBar setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:[UIColor blackColor],UITextAttributeTextColor,[UIFont fontWithName:@"Arial Rounded MT Bold" size:17.0],UITextAttributeFont,nil]];
    }
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    self.tableView.backgroundColor = IWcolor(193, 193, 193);
    //通知刷新页面
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(reloadTabel:) name:@"MyTableViewreload" object:nil];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    [UIApplication sharedApplication].statusBarStyle=UIStatusBarStyleDefault;
}
//通知
- (void)reloadTabel:(NSNotification *)notify{
    _dic = [notify userInfo];
    [self.tableView reloadData];
    NSLog(@"%@",_dic);
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 2;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    if (section == 0) {
        return 3;
    }else{
        return 1;
    }
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *SimleTableIdentifier = @"myfirstcell";
    if (indexPath.section == 0) {
        if(indexPath.row == 0){
            SimleTableIdentifier =@"myfirstcell";
        }else if (indexPath.row == 1){
            SimleTableIdentifier =@"mysecondcell";
        }else if (indexPath.row == 2){
            SimleTableIdentifier =@"mythirdcell";
        }
    }else if (indexPath.section == 1){
        if(indexPath.row == 0){
            SimleTableIdentifier =@"myfivecell";
        }
    }
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:SimleTableIdentifier];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:SimleTableIdentifier];
    }
    UILabel *total_moneylab = (UILabel *)[cell viewWithTag:101];
    total_moneylab.text = [NSString stringWithFormat:@"%@",_dic[@"total_money"]];
    
    UILabel *already_amountlab = (UILabel *)[cell viewWithTag:102];
    already_amountlab.text = [NSString stringWithFormat:@"%@",_dic[@"already_amount"]];
    
    UILabel *out_amountlab = (UILabel *)[cell viewWithTag:103];
    out_amountlab.text = [NSString stringWithFormat:@"%@",_dic[@"out_amount"]];
    return cell;
}

//每个分组下边预留的空白高度
-(CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section
{
    if(section == 0){
        return 5;
    }
    return 0;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    static int height;
    if (indexPath.section == 0) {
        if(indexPath.row == 0){
            height = 165;
        }else if (indexPath.row == 1){
            height = 44;
        }else if (indexPath.row == 2){
            height = 44;
        }
    }else if (indexPath.section == 1){
        if(indexPath.row == 0){
            height = 44;
        }
    }
    
    return height;
}
//点击登录或者注销
- (IBAction)loginbtn:(id)sender {
#pragma mark 判断是否登入-------------------------------未做
    LoginViewController *loginView = [[LoginViewController alloc]init];
    [self presentViewController:loginView animated:YES completion:^{
        
    }];
}

- (void)dealloc {
    //移除通知
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}
@end
