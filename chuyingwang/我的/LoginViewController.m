//
//  LoginView.m
//  雏鹰网
//
//  Created by 白洪坤 on 16/8/2.
//  Copyright © 2016年 白洪坤. All rights reserved.
//

#import "LoginViewController.h"


@implementation LoginViewController

- (void)viewDidLoad{
    [super viewDidLoad];
    _loginNameField.borderStyle = UITextBorderStyleRoundedRect;
    _loginNameField.clearButtonMode = UITextFieldViewModeWhileEditing;
    UIImageView *imageView = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, 30, 20)];
    [imageView setImage:[UIImage imageNamed:@"account_def"]];
    [imageView setHighlightedImage:[UIImage imageNamed:@"account"]];
    imageView.highlighted = YES;
    imageView.contentMode = UIViewContentModeScaleAspectFit;
    _loginNameField.leftView.center = imageView.center;
    _loginNameField.leftView = imageView;
    _loginNameField.leftViewMode = UITextFieldViewModeAlways;
    _loginNameField.delegate = self;
    
    _loginPasswordField.borderStyle = UITextBorderStyleRoundedRect;
    _loginPasswordField.secureTextEntry = YES;
    UIImageView *imageView1 = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, 30, 20)];
    [imageView1 setImage:[UIImage imageNamed:@"password_def"]];
    [imageView1 setHighlightedImage:[UIImage imageNamed:@"password"]];
    imageView1.highlighted = YES;
    imageView1.contentMode = UIViewContentModeScaleAspectFit;
    _loginPasswordField.leftView.center = imageView1.center;
    _loginPasswordField.leftView = imageView1;
    _loginPasswordField.leftViewMode = UITextFieldViewModeAlways;
    _loginPasswordField.delegate =self;
    
    _loginbtn.layer.masksToBounds = YES;
    _loginbtn.layer.cornerRadius = 5.0f;
}

- (void)viewWillAppear:(BOOL)animated {
}

- (IBAction)loginbtn:(id)sender {
    [_loginNameField resignFirstResponder];
    [_loginPasswordField resignFirstResponder];
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
