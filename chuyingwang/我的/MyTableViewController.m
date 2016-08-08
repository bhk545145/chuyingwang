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
#import "BmobTool.h"
#import "SDImageCache.h"
#import "UIButton+WebCache.h"

@interface MyTableViewController (){
    NSDictionary *_dic;
    BOOL _isLoginSuccess;
    NSUserDefaults *_userDefaults;
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
    //判断是否登入成功
    [self isLoginSuccess];
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
    _userDefaults = [[NSUserDefaults alloc]init];
    _isLoginSuccess = [[_userDefaults objectForKey:@"isLoginSuccess"]boolValue];
    [self.tableView reloadData];
    DLog(@"%@",_dic);
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 2;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    if (section == 0) {
        return 5;
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
        }else if (indexPath.row == 3){
            SimleTableIdentifier =@"myfourthcell";
        }else if (indexPath.row == 4){
            SimleTableIdentifier =@"myfivecell";
        }
    }else if (indexPath.section == 1){
        if(indexPath.row == 0){
            SimleTableIdentifier =@"mysixcell";
        }
    }
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:SimleTableIdentifier];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:SimleTableIdentifier];
    }
    UIButton *imagebtn = (UIButton *)[cell viewWithTag:104];
    [imagebtn sd_setBackgroundImageWithURL:_dic[@"image_path"] forState:UIControlStateNormal];
    if (_isLoginSuccess) {
        [imagebtn setTitle:_dic[@"username"] forState:UIControlStateNormal];
        [imagebtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    }else{
        [imagebtn setTitle:@"登录/注册" forState:UIControlStateNormal];
        [imagebtn setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    }
    
    UILabel *total_moneylab = (UILabel *)[cell viewWithTag:101];
    total_moneylab.text = [NSString stringWithFormat:@"%@",_dic[@"total_money"]];
    
    UILabel *already_amountlab = (UILabel *)[cell viewWithTag:102];
    already_amountlab.text = [NSString stringWithFormat:@"%@",_dic[@"already_amount"]];
    
    UILabel *out_amountlab = (UILabel *)[cell viewWithTag:103];
    out_amountlab.text = [NSString stringWithFormat:@"%@",_dic[@"out_amount"]];
    
    UILabel *Investment_projectslab = (UILabel *)[cell viewWithTag:105];
    Investment_projectslab.text = [NSString stringWithFormat:@"%@",_dic[@"Investment_projects"]];
    
    UILabel *created_projectslab = (UILabel *)[cell viewWithTag:106];
    created_projectslab.text = [NSString stringWithFormat:@"%@",_dic[@"created_projects"]];
    
    UILabel *Collection_projectslab = (UILabel *)[cell viewWithTag:107];
    Collection_projectslab.text = [NSString stringWithFormat:@"%@",_dic[@"Collection_projects"]];
    
    UILabel *Audited_projectslab = (UILabel *)[cell viewWithTag:108];
    Audited_projectslab.text = [NSString stringWithFormat:@"%@",_dic[@"Audited_projects"]];
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
    if (_isLoginSuccess) {
        UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"是否注销？" message:nil preferredStyle:UIAlertControllerStyleActionSheet];
        UIAlertAction *defaultAction = [UIAlertAction actionWithTitle:@"注销" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            [_userDefaults setObject:@0 forKey:@"isLoginSuccess"];
            _isLoginSuccess = NO;
            _dic = nil;
            [self.tableView reloadData];
        }];
        UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleDestructive handler:^(UIAlertAction * _Nonnull action) {}];
        [alert addAction:defaultAction];
        [alert addAction:cancelAction];
        [self presentViewController:alert animated:YES completion:nil];
    }else{
        LoginViewController *loginView = [[LoginViewController alloc]init];
        [self presentViewController:loginView animated:YES completion:^{}];
    }
}

- (void)dealloc {
    //移除通知
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}
//判断是否登入成功
- (void)isLoginSuccess{
    _userDefaults = [[NSUserDefaults alloc]init];
    _isLoginSuccess = [[_userDefaults objectForKey:@"isLoginSuccess"]boolValue];
    NSString *loginName = [_userDefaults objectForKey:@"loginName"];
    NSString *loginPassword = [_userDefaults objectForKey:@"loginPassword"];
    if (_isLoginSuccess) {
        BmobTool *bmobtool = [[BmobTool alloc]init];
        [bmobtool BmobloginwhithUsername:loginName Password:loginPassword andBlock:^(BOOL ret, NSDictionary *reult) {
            _dic = reult;
            [self.tableView reloadData];
        }];
    }
}
@end
