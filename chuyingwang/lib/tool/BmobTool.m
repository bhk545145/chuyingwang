//
//  BmobTool.m
//  雏鹰网
//
//  Created by 白洪坤 on 16/7/30.
//  Copyright © 2016年 白洪坤. All rights reserved.
//

#import "BmobTool.h"
#import <BmobSDK/Bmob.h>

@implementation BmobTool

- (void)Bmobquery{
    //查找project表
    BmobQuery   *bquery = [BmobQuery queryWithClassName:@"project"];
    [bquery findObjectsInBackgroundWithBlock:^(NSArray *array, NSError *error) {
        for (BmobObject *obj in array) {
            //打印playerName
            NSLog(@"obj.name = %@", [obj objectForKey:@"name"]);
            //打印objectId,createdAt,updatedAt
            NSLog(@"obj.objectId = %@", [obj objectId]);
            NSLog(@"obj.createdAt = %@", [obj createdAt]);
            NSLog(@"obj.updatedAt = %@", [obj updatedAt]);
        }
    }];
}

@end
