//
//  DetailProjectTableViewController.m
//  chuyingwang
//
//  Created by 白洪坤 on 16/7/12.
//  Copyright © 2016年 白洪坤. All rights reserved.
//

#import "DetailProjectTableViewController.h"
#import "CardModel.h"

@interface DetailProjectTableViewController ()

@end

@implementation DetailProjectTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationItem.title = _CardModel.Cardstr;
    UIBarButtonItem *leftBarButtonItem = [[UIBarButtonItem alloc]initWithTitle:@"首页" style:UIBarButtonItemStyleDone target:self action:@selector(popViewControllerback:)];
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
#warning Incomplete implementation, return the number of sections
    return 0;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
#warning Incomplete implementation, return the number of rows
    return 0;
}

/*
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:<#@"reuseIdentifier"#> forIndexPath:indexPath];
    
    // Configure the cell...
    
    return cell;
}
*/



@end
