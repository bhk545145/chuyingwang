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

- (void)Bmobquery:(NSString *)ClassName andBlock:(void(^)(BOOL ret,NSMutableArray *mainarray))block{
    NSMutableArray *mainarray = [NSMutableArray array];
    //查找project表
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

@end
