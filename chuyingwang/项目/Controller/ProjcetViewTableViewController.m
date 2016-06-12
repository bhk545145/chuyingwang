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

@interface ProjcetViewTableViewController (){
    NSArray *projectarray;
}

@end

@implementation ProjcetViewTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    if (IsiOS7Later) {
        //导航栏背景和字体颜色
        [self.navigationController.navigationBar setBarTintColor:IWcolor(193, 193, 193)];
        [self.navigationController.navigationBar setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:[UIColor blackColor],UITextAttributeTextColor,[UIFont fontWithName:@"Arial Rounded MT Bold" size:17.0],UITextAttributeFont,nil]];
    }
    projectarray = [NSArray arrayWithObjects:@"i1",@"i2",@"i3", nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidAppear:(BOOL)animated{
    [UIApplication sharedApplication].statusBarStyle=UIStatusBarStyleDefault;
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [projectarray count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *SimleTableIdentifier = @"SimleTableIdentifier";
    projectTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:SimleTableIdentifier];
    if(cell == nil){
        NSArray *cells = [[NSBundle mainBundle] loadNibNamed:@"projectTableViewCell" owner:nil options:nil];
        cell = [cells lastObject];
    }

    NSString *icardstr = projectarray[indexPath.row];
    CardModel *cardModel = [[CardModel alloc]init];
    cardModel.iCardimg = icardstr;
    cardModel.Cardstr = @"Bikernel 项目";
    cardModel.financingStatus = @"股权融资中";
    cardModel.financingStatusPercentage = 0.25f;
    cardModel.projectIntroduction = @"该项目由阿里系知名创业团队带领，团队协作力度和执行度都很优秀123123123";
    cardModel.reading = 5;
    cardModel.collection = 8;
    cell.CardModel = cardModel;
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 324;
}



@end
