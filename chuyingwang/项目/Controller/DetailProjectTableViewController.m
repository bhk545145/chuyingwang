//
//  DetailProjectTableViewController.m
//  chuyingwang
//
//  Created by 白洪坤 on 16/7/12.
//  Copyright © 2016年 白洪坤. All rights reserved.
//

#import "DetailProjectTableViewController.h"
#import "CardModel.h"
#import "bhkCommon.h"
#import "ProjectDetailsTableViewCell.h"
#import "ProjectIntroductionTableViewCell.h"
#import "ProjectTeamTableViewCell.h"

@interface DetailProjectTableViewController ()

@end

@implementation DetailProjectTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //导航栏名称
    self.navigationItem.title = _CardModel.Cardstr;
    //导航栏返回按钮
    UIBarButtonItem *leftBarButtonItem = [[UIBarButtonItem alloc]initWithTitle:@"< 返回" style:UIBarButtonItemStyleDone target:self action:@selector(popViewControllerback:)];
    leftBarButtonItem.tintColor = [UIColor whiteColor];
    self.navigationItem.leftBarButtonItem = leftBarButtonItem;
    
    self.tabBarController.tabBar.hidden = YES;
}
//返回之前的视图
- (void)popViewControllerback:(UIBarButtonItem *)Item{
    [self.navigationController popViewControllerAnimated:YES];
    self.tabBarController.tabBar.hidden = NO;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)setCardModel:(CardModel *)CardModel{
    _CardModel = CardModel;
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 3;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    if (section == 0) {
        return 1;
    }else if (section == 1){
        return 1;
    }else{
        return 3;
    }
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    //项目图片
    if (indexPath.section == 0) {
        static NSString *SimleTableIdentifier = @"ProjectDetails";
        ProjectDetailsTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:SimleTableIdentifier];
        if(cell == nil){
            cell = [[ProjectDetailsTableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:SimleTableIdentifier];
        }
        cell.CardModel = _CardModel;
        return cell;
    //项目介绍
    }else if(indexPath.section == 1){
        static NSString *SimleTableIdentifier = @"ProjectIntroduction";
        ProjectIntroductionTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:SimleTableIdentifier];
        if(cell == nil){
            cell = [[ProjectIntroductionTableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:SimleTableIdentifier];
        }
        cell.CardModel = _CardModel;
        return cell;
    //团队介绍
    }else{
        static NSString *SimleTableIdentifier = @"ProjectTeamTableViewCell";
        ProjectTeamTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:SimleTableIdentifier];
        if(cell == nil){
            cell = [[ProjectTeamTableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:SimleTableIdentifier];
        }
        cell.CardModel = _CardModel;
        return cell;
    }
}
//Cell的高度
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    if (indexPath.section == 0) {
        CGFloat projectimageViewHight = UIScreenBounds.size.width/Projectimagewidth * Projectimagehight;
        return projectimageViewHight * 2;
    }else if(indexPath.section == 1){
        return 200;
    }else{
        return 100;
    }
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    if (section == 0) {
        return @"";
    }else if (section == 1){
        return @"项目介绍";
    }else{
        return @"团队介绍";
    }
}



@end
