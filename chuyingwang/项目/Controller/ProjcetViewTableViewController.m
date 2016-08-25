//
//  ProjcetViewTableViewController.m
//  chuyingwang
//
//  Created by bai on 16/5/28.
//  Copyright © 2016年 白洪坤. All rights reserved.
//

#import "ProjcetViewTableViewController.h"
#import "projectTableViewCell.h"
#import "bhkCommon.h"
#import "CardModel.h"
#import "MJRefresh.h"
#import "PublicTool.h"
#import "CYTabBarViewController.h"
#import "BmobTool.h"

@interface ProjcetViewTableViewController (){
    dispatch_queue_t networkQueue;
}

@property (nonatomic,strong) NSArray *Cardarray;
@end

@implementation ProjcetViewTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    networkQueue = dispatch_queue_create("CYWNetworkQueue", DISPATCH_QUEUE_CONCURRENT);
    if (IsiOS7Later) {
        //导航栏背景和字体颜色
        [self.navigationController.navigationBar setBarTintColor:IWcolor(193, 193, 193)];
        [self.navigationController.navigationBar setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:[UIColor blackColor],UITextAttributeTextColor,[UIFont fontWithName:@"Arial Rounded MT Bold" size:17.0],UITextAttributeFont,nil]];
    }
    
    __weak typeof(self) weakSelf = self;
    self.tableView.mj_header = [MJRefreshNormalHeader headerWithRefreshingBlock:^{
        [weakSelf listRefresh];
    }];
    [self.tableView.mj_header beginRefreshing];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    [UIApplication sharedApplication].statusBarStyle=UIStatusBarStyleDefault;
}


- (void)listRefresh{
    dispatch_async(networkQueue, ^{
        BmobTool *bmobtool = [[BmobTool alloc]init];
        [bmobtool Bmobquery:@"projecttest" andBlock:^(BOOL ret, NSArray *mainarray) {
            _Cardarray = mainarray;
            dispatch_async(dispatch_get_main_queue(), ^{
                [self.tableView reloadData];
                [self.tableView.mj_header endRefreshing];
            });
        }];
    });

}



#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [_Cardarray count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *SimleTableIdentifier = @"SimleTableIdentifier";
    projectTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:SimleTableIdentifier];
    if(cell == nil){
        NSArray *cells = [[NSBundle mainBundle] loadNibNamed:@"projectTableViewCell" owner:nil options:nil];
        cell = [cells lastObject];
    }
    CardModel *cardModel = _Cardarray[indexPath.row];
    cell.CardModel = cardModel;
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 324;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    CardModel *cardModel = _Cardarray[indexPath.row];
    CYTabBarViewController *DetailProject = [[CYTabBarViewController alloc]init];
    DetailProject.CardModel = cardModel;
    [self.navigationController pushViewController:DetailProject animated:YES];
    BmobTool *bmobtool = [[BmobTool alloc]init];
    [bmobtool BmobClassName:@"projecttest" ObjectId:cardModel.objectid IncrementKey:@"reading" updateInBackgroundWithResultBlock:^(BOOL ret, NSString *msg) {
        if (ret) {
            DLog(@"%@",msg);
        }
    }];
    //隐藏底部Tabbar
    self.tabBarController.tabBar.hidden = YES;
}


@end
