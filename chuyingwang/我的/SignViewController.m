//
//  SignViewController.m
//  雏鹰网
//
//  Created by 白洪坤 on 16/8/4.
//  Copyright © 2016年 白洪坤. All rights reserved.
//

#import "SignViewController.h"
#import "BmobTool.h"

@interface SignViewController ()

@end

@implementation SignViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
//注册
- (IBAction)signfinshbtn:(id)sender {
    if ([_signPasswordField.text isEqualToString:_signPasswordagainField.text]) {
        BmobTool *bmobtool = [[BmobTool alloc]init];
        [bmobtool BmobsignUpPhone:_signphoneField.text Smscode:_smscodeField.text Nickname:_signNicknameField.text Password:_signPasswordField.text Passwordagain:_signPasswordagainField.text andBlock:^(BOOL ret, NSString *msg) {
            if (ret) {
                NSLog(@"%@",msg);
                [self dismissViewControllerAnimated:YES completion:^{
                    
                }];
            }else{
                NSLog(@"%@",msg);
            }
        }];
    }else{
        NSLog(@"密码不一致");
    }

}

- (IBAction)back:(id)sender {
    [self dismissViewControllerAnimated:YES completion:^{
        
    }];
}
@end
