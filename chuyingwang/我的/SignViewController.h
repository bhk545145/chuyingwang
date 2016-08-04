//
//  SignViewController.h
//  雏鹰网
//
//  Created by 白洪坤 on 16/8/4.
//  Copyright © 2016年 白洪坤. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SignViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *signphoneField;
@property (weak, nonatomic) IBOutlet UITextField *smscodeField;
@property (weak, nonatomic) IBOutlet UITextField *signNicknameField;
@property (weak, nonatomic) IBOutlet UITextField *signPasswordField;
@property (weak, nonatomic) IBOutlet UITextField *signPasswordagainField;
- (IBAction)signfinshbtn:(id)sender;
- (IBAction)back:(id)sender;
@end
