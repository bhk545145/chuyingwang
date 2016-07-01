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

@interface ProjcetViewTableViewController (){
    
}

@property (nonatomic,strong) NSMutableArray *Cardarray;
@end

@implementation ProjcetViewTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];

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
    NSArray *devicearray = @[@{
                                 @"iCardimg"     :   @"i1",
                                 @"Cardstr"     :   @"Bikernel 项目",
                                 @"financingStatus"       :   @"股权融资中",
                                 @"financingStatusPercentage"      :   [NSNumber numberWithFloat:0.25f],
                                 @"projectIntroduction"      :   @"该项目由阿里系知名创业团队带领，团队协作力度和执行度都很优秀",
                                 @"reading":   [NSNumber numberWithInt:5],
                                 @"collection"     :   [NSNumber numberWithInt:8]
                                 },@{
                                 @"iCardimg"     :   @"i2",
                                 @"Cardstr"     :   @"Bikernel 项目",
                                 @"financingStatus"       :   @"股权融资中",
                                 @"financingStatusPercentage"      :   [NSNumber numberWithFloat:0.75f],
                                 @"projectIntroduction"      :   @"该项目由阿里系知名创业团队带领，团队协作力度和执行度都很优秀",
                                 @"reading":   [NSNumber numberWithInt:5],
                                 @"collection"     :   [NSNumber numberWithInt:18]
                                 },@{
                                 @"iCardimg"     :   @"i3",
                                 @"Cardstr"     :   @"Bikernel 项目",
                                 @"financingStatus"       :   @"融资完成",
                                 @"financingStatusPercentage"      :   [NSNumber numberWithFloat:1.0f],
                                 @"projectIntroduction"      :   @"该项目由阿里系知名创业团队带领，团队协作力度和执行度都很优秀",
                                 @"reading":   [NSNumber numberWithInt:15],
                                 @"collection"     :   [NSNumber numberWithInt:8]
                                 }];
    _Cardarray = [PublicTool cardModelarray:devicearray];
    [self.tableView reloadData];
    [self.tableView.mj_header endRefreshing];
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
    NSLog(@"%@我被点击了",cardModel);
}


@end
