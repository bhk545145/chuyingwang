//
//  BmobTool.h
//  雏鹰网
//
//  Created by 白洪坤 on 16/7/30.
//  Copyright © 2016年 白洪坤. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BmobTool : NSObject

- (void)Bmobquery:(NSString *)ClassName andBlock:(void(^)(BOOL ret,NSMutableArray *mainarray))block;
@end
