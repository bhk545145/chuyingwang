//
//  LoginView.m
//  雏鹰网
//
//  Created by 白洪坤 on 16/8/2.
//  Copyright © 2016年 白洪坤. All rights reserved.
//

#import "LoginViewController.h"
#import "PublicTool.h"
#import "BmobTool.h"
#import "SignViewController.h"
#import "Toast+UIView.h"

@implementation LoginViewController

- (void)viewDidLoad{
    [super viewDidLoad];
    _loginNameField.borderStyle = UITextBorderStyleRoundedRect;
    _loginNameField.clearButtonMode = UITextFieldViewModeWhileEditing;
    UIImageView *imageView = [PublicTool setTextFieldimageView:@"account_def" HighImage:@"account"];
    _loginNameField.leftView = imageView;
    _loginNameField.leftViewMode = UITextFieldViewModeAlways;
    _loginNameField.delegate = self;
    
    _loginPasswordField.borderStyle = UITextBorderStyleRoundedRect;
    _loginPasswordField.secureTextEntry = YES;
    UIImageView *imageView1 = [PublicTool setTextFieldimageView:@"password_def" HighImage:@"password"];
    _loginPasswordField.leftView = imageView1;
    _loginPasswordField.leftViewMode = UITextFieldViewModeAlways;
    _loginPasswordField.delegate =self;
    
    _loginbtn.layer.masksToBounds = YES;
    _loginbtn.layer.cornerRadius = 5.0f;
    //取出账号信息
    NSUserDefaults *userDefults = [[NSUserDefaults alloc]init];
    _loginNameField.text = [userDefults objectForKey:@"loginName"];
    _loginPasswordField.text = [userDefults objectForKey:@"loginPassword"];
}

- (void)viewWillAppear:(BOOL)animated {
}

//登录
- (IBAction)loginbtn:(id)sender {
    [_loginNameField resignFirstResponder];
    [_loginPasswordField resignFirstResponder];
    BmobTool *bmobtool = [[BmobTool alloc]init];
    [bmobtool BmobloginwhithUsername:_loginNameField.text Password:_loginPasswordField.text andBlock:^(BOOL ret, NSDictionary *reult) {
        if (ret) {
            [self dismissViewControllerAnimated:YES completion:^{
                //储存账号信息
                NSUserDefaults *userDefults = [[NSUserDefaults alloc]init];
                [userDefults setObject:_loginNameField.text forKey:@"loginName"];
                [userDefults setObject:_loginPasswordField.text forKey:@"loginPassword"];
                [userDefults setObject:@1 forKey:@"isLoginSuccess"];
                //注册通知
                [[NSNotificationCenter defaultCenter] postNotificationName:@"MyTableViewreload" object:nil userInfo:reult];
            }];
        }else{
            [self.view makeToast:[NSString stringWithFormat:@"getMsg:%@",reult] duration:3.0f position:@"bottom"];
            NSLog(@"%d/-----/%@",ret,reult);
        }
        
    }];
    
}
//注册
- (IBAction)signup:(id)sender {
    SignViewController *signView = [[SignViewController alloc]init];
    [self presentViewController:signView animated:YES completion:^{
        
    }];
}
//返回
- (IBAction)back:(id)sender {
    [self dismissViewControllerAnimated:YES completion:^{
        
    }];
}

#pragma mark - delegate
-(BOOL)textFieldShouldReturn:(UITextField *)textField{
    [textField resignFirstResponder];
    return YES;
}

- (void)textFieldDidBeginEditing:(UITextField *)textField{
    [self animateTextField: textField up: YES];
}

- (void)textFieldDidEndEditing:(UITextField *)textField{
    [self animateTextField: textField up: NO];

}
//页面上移或下移50
- (void) animateTextField:(UITextField*)textField up:(BOOL)up {
    const int movementDistance = 50; // tweak as needed
    const float movementDuration = 0.3f; // tweak as needed
    int movement = (up ? -movementDistance : movementDistance);
    
    [UIView beginAnimations: @"anim" context: nil];
    [UIView setAnimationBeginsFromCurrentState: YES];
    [UIView setAnimationDuration: movementDuration];
    self.view.frame = CGRectOffset(self.view.frame, 0, movement);
    [UIView commitAnimations];
}





@end
