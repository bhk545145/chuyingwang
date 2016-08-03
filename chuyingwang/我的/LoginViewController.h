//
//  LoginView.h
//  雏鹰网
//
//  Created by 白洪坤 on 16/8/2.
//  Copyright © 2016年 白洪坤. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LoginViewController : UIViewController<UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UITextField *loginNameField;
@property (weak, nonatomic) IBOutlet UITextField *loginPasswordField;
@property (weak, nonatomic) IBOutlet UIButton *loginbtn;

- (IBAction)loginbtn:(id)sender;
@end
