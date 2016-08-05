//
//  BmobTool.m
//  雏鹰网
//
//  Created by 白洪坤 on 16/7/30.
//  Copyright © 2016年 白洪坤. All rights reserved.
//

#import "BmobTool.h"
#import <BmobSDK/Bmob.h>
#import "CardModel.h"

@implementation BmobTool

//查找project表
- (void)Bmobquery:(NSString *)ClassName andBlock:(void(^)(BOOL ret,NSMutableArray *mainarray))block{
    NSMutableArray *mainarray = [NSMutableArray array];
    BmobQuery   *bquery = [BmobQuery queryWithClassName:ClassName];
    [bquery findObjectsInBackgroundWithBlock:^(NSArray *array, NSError *error) {
        for (BmobObject *obj in array) {
            CardModel *cardmodel = [[CardModel alloc]init];
            BmobFile *file = (BmobFile *)[obj objectForKey:@"iCardimg"];
            cardmodel.iCardimg = file.url;
            cardmodel.Cardstr = [obj objectForKey:@"Cardstr"];
            cardmodel.financingStatus = [obj objectForKey:@"financingStatus"];
            cardmodel.financingStatusPercentage = [[obj objectForKey:@"financingPercentage"] floatValue];
            cardmodel.projectIntroduction = [obj objectForKey:@"projectIntroduction"];
            cardmodel.reading = [[obj objectForKey:@"reading"] integerValue
            ];
            cardmodel.collection = [[obj objectForKey:@"collection"] integerValue];
            [mainarray addObject:cardmodel];
        }
        if (error) {
            block(NO,mainarray);
        }else{
            block(YES,mainarray);
        }
        
    }];
    
}

/**
 *  注册
 *
 *  @param phone    手机号码
 *  @param smscode  手机验证码
 *  @param nickname 昵称
 *  @param password 密码
 *  @param password 密码确认
 *  @param block    返回结果
 */
- (void)BmobsignUpPhone:(NSString *)phone Smscode:(NSString *)smscode Nickname:(NSString *)nickname Password:(NSString *)password Passwordagain:(NSString *)passwordagain andBlock:(void(^)(BOOL ret,NSString *msg))block{
    BmobUser *bUser = [[BmobUser alloc]init];
    [bUser setUsername:nickname];
    [bUser setPassword:password];
    [bUser setObject:phone forKey:@"mobilePhoneNumber"];
    [bUser signUpInBackgroundWithBlock:^(BOOL isSuccessful, NSError *error) {
        if (isSuccessful){
            block(YES,@"Sign up successfully");
        } else {
            block(NO, [NSString stringWithFormat:@"%@",error]);
        }
    }];
}
/**
 *  登录
 *
 *  @param username 用户名
 *  @param password 密码
 *  @param block    返回结果
 */
- (void)BmobloginwhithUsername:(NSString *)username Password:(NSString *)password andBlock:(void(^)(BOOL ret,NSDictionary *reult))block{
    [BmobUser loginInbackgroundWithAccount:username andPassword:password block:^(BmobUser *user, NSError *error) {
        if (user) {
            NSDictionary *dic = [NSDictionary dictionaryWithObjectsAndKeys:
                                 [user objectForKey:@"username"], @"username",
                                 [user objectForKey:@"total_money"],@"total_money",
                                 [user objectForKey:@"already_amount"],@"already_amount",
                                 [user objectForKey:@"out_amount"],@"out_amount",
                                 nil];
            block(YES,dic);
        } else {
            block(NO,error.userInfo);
        }
    }];
}
@end
