//
//  MyTableViewController.m
//  chuyingwang
//
//  Created by 白洪坤 on 16/6/2.
//  Copyright © 2016年 白洪坤. All rights reserved.
//

#import "MyTableViewController.h"
#import "bhkCommon.h"


@interface MyTableViewController ()

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

@end
