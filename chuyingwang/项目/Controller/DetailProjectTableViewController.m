//
//  DetailProjectTableViewController.m
//  chuyingwang
//
//  Created by 白洪坤 on 16/7/12.
//  Copyright © 2016年 白洪坤. All rights reserved.
//

#import "DetailProjectTableViewController.h"
#import "CardModel.h"
#import "ProjectDetailsTableViewCell.h"

@interface DetailProjectTableViewController ()

@end

@implementation DetailProjectTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationItem.title = _CardModel.Cardstr;
    UIBarButtonItem *leftBarButtonItem = [[UIBarButtonItem alloc]initWithTitle:@"< 返回" style:UIBarButtonItemStyleDone target:self action:@selector(popViewControllerback:)];
    leftBarButtonItem.tintColor = [UIColor whiteColor];
    self.navigationItem.leftBarButtonItem = leftBarButtonItem;
}

- (void)popViewControllerback:(UIBarButtonItem *)Item{
    [self.navigationController popViewControllerAnimated:YES];
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
    if (indexPath.section == 0) {
        static NSString *SimleTableIdentifier = @"SimleTableIdentifier";
        ProjectDetailsTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:SimleTableIdentifier];
        if(cell == nil){
            cell = [[ProjectDetailsTableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:SimleTableIdentifier];
        }
        cell.CardModel = _CardModel;
        return cell;
    }else{
        static NSString *SimleTableIdentifier = @"SimleTableIdentifier1";
        ProjectDetailsTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:SimleTableIdentifier];
        if(cell == nil){
            cell = [[ProjectDetailsTableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:SimleTableIdentifier];
        }
        cell.CardModel = _CardModel;
        return cell;
    }
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 100;
}




@end
