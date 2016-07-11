//
//  HTTPrequest.m
//  chuyingwang
//
//  Created by 白洪坤 on 16/7/11.
//  Copyright © 2016年 白洪坤. All rights reserved.
//

#import "HTTPrequest.h"
#import "ASIHTTPRequest.h"
#import "JSONKit.h"
#import "bhkCommon.h"

@implementation HTTPrequest


/*
 *  @brief                  HTTP异步请求数据fdf
 *
 *  @param  url             url宏，如：BL_HTTP_GET_DEVICENAME_JSON 表示：@"http://upgrade.broadlink.com.cn/soft/device-name.json"
 *  @param  headerDic       http头，可变字典
 *  @param  requestMethod   请求方法，如：GET/POST/PUT
 *  @param  paramString     GET方式请求的时候，url后面的附加参数，如：?userId=%@&session=%@
 *  @param  paramData       POST方式的时候，放在body中的NSData
 *  @param  retCodeKey      返回的结果代码key，比如：“code”、“error”
 *
 *  @param  block           返回执行结果的block
 */
-(void)getDictionaryAsynchronousFromUrl:(NSString*)url header:(NSDictionary *)headerDic requestMethod:(NSString *)requestMethod getParam:(NSString *)paramString postParam:(NSData *)paramData andRetCodeKey:(NSString *)retCodeKey withBlock:(void(^)(BOOL bRet, NSDictionary *retDic, NSString *msg))block
{
    //拼接URL
    NSString *tempUrl;
    if ([requestMethod isEqualToString:@"GET"])
    {
        if (paramString)
        {
            tempUrl = url;
            if (paramString)
            {
                tempUrl = [tempUrl stringByAppendingString:paramString];
            }
        }
        else
        {
            tempUrl = url;
        }
    }
    else
    {
        tempUrl = url;
    }
    
    __weak ASIHTTPRequest *request = [ASIHTTPRequest requestWithURL:[NSURL URLWithString:tempUrl]];
    
    //如果是post方式提交，设置要提交的数据
    if ([requestMethod isEqualToString:@"POST"] && paramData)
    {
        [request appendPostData:paramData];
    }
    
    //设置http header
    if (headerDic)
    {
        NSMutableDictionary *tempMutableDic = [[NSMutableDictionary alloc] initWithDictionary:headerDic];
        [request setRequestHeaders:tempMutableDic];
    }
    
    //设置提交的方式GET/POST
    if (requestMethod)
    {
        [request setRequestMethod:requestMethod];
    }
    //异步方式请求
    [request startAsynchronous];
    
    [request setCompletionBlock:^{
        
        NSData *responseData = request.responseData;
        NSString *responseString = [[NSString alloc] initWithData:responseData encoding:NSUTF8StringEncoding];
        NSDictionary *dic = [responseString objectFromJSONString];
        if ([[dic valueForKey:!retCodeKey?@"error":retCodeKey] intValue] == 0)
        {
            block(YES,dic,nil);
        }
        else
        {
            if (request.responseStatusCode == 200)
            {
                block(YES,dic,nil);
            }
            else
            {
                block(NO,dic,dic[@"msg"]);
            }
        }
    }];
    
    [request setFailedBlock:^{
        
        DLog(@"request.error.description");
        block(NO, nil, @"str_common_err_network");
    }];
}

@end
