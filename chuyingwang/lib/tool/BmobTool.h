//
//  BmobTool.h
//  雏鹰网
//
//  Created by 白洪坤 on 16/7/30.
//  Copyright © 2016年 白洪坤. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BmobTool : NSObject
//查找project表
- (void)Bmobquery:(NSString *)ClassName andBlock:(void(^)(BOOL ret,NSMutableArray *mainarray))block;
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
- (void)BmobsignUpPhone:(NSString *)phone Smscode:(NSString *)smscode Nickname:(NSString *)nickname Password:(NSString *)password Passwordagain:(NSString *)passwordagain andBlock:(void(^)(BOOL ret,NSString *msg))block;

/**
 *  登录
 *
 *  @param username 用户名
 *  @param password 密码
 *  @param block    返回结果
 */
- (void)BmobloginwhithUsername:(NSString *)username Password:(NSString *)password andBlock:(void(^)(BOOL ret,NSDictionary *reult))block;
@end
