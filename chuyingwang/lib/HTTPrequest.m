//
//  HTTPrequest.m
//  chuyingwang
//
//  Created by 白洪坤 on 16/7/11.
//  Copyright © 2016年 白洪坤. All rights reserved.
//

#import "HTTPrequest.h"
#import "ASIHTTPRequest.h"
#import "ASIFormDataRequest.h"
#import "JSONKit.h"
#import "bhkCommon.h"

@implementation HTTPrequest

#pragma mark - HTTP数据请求相关
#pragma mark -
#pragma mark - asynchronous(异步) and block

-(void)getDictionaryAsynchronousFromUrl:(NSString*)url withBlock:(void(^)(BOOL bRet, NSDictionary *retDic, NSString *msg))mainBlock
{
    [self getDictionaryAsynchronousFromUrl:url header:nil requestMethod:@"GET" getParam:nil postParam:nil andRetCodeKey:nil withBlock:^(BOOL bRet, NSDictionary *retDic, NSString *msg) {
        
        mainBlock(bRet, retDic, msg);
    }];
}

-(void)getDictionaryAsynchronousFromUrl:(NSString*)url header:(NSDictionary *)headerDic withBlock:(void(^)(BOOL bRet, NSDictionary *retDic, NSString *msg))mainBlock
{
    [self getDictionaryAsynchronousFromUrl:url header:headerDic requestMethod:@"GET" getParam:nil postParam:nil andRetCodeKey:nil withBlock:^(BOOL bRet, NSDictionary *retDic, NSString *msg) {
        
        mainBlock(bRet, retDic, msg);
    }];
}

-(void)getDictionaryAsynchronousFromUrl:(NSString*)url postParam:(NSData *)paramData withBlock:(void(^)(BOOL bRet, NSDictionary *retDic, NSString *msg))mainBlock
{
    [self getDictionaryAsynchronousFromUrl:url header:nil requestMethod:@"POST" getParam:nil postParam:paramData andRetCodeKey:nil withBlock:^(BOOL bRet, NSDictionary *retDic, NSString *msg) {
        
        mainBlock(bRet, retDic, msg);
    }];
}

-(void)getDictionaryAsynchronousFromUrl:(NSString*)url header:(NSDictionary *)headerDic postParam:(NSData *)paramData withBlock:(void(^)(BOOL bRet, NSDictionary *retDic, NSString *msg))mainBlock
{
    [self getDictionaryAsynchronousFromUrl:url header:headerDic requestMethod:@"POST" getParam:nil postParam:paramData andRetCodeKey:nil withBlock:^(BOOL bRet, NSDictionary *retDic, NSString *msg) {
        
        mainBlock(bRet, retDic, msg);
    }];
}

/*
 *  @brief                  http请求，需要传入结果字典中返回错误代码的项目的key
 *
 *  @param  url             http请求的url
 *  @param  headerDic       http请求的header
 *  @param  paramData       http请求发送的body数据
 *  @param  retCodeKeyStr   http返回数据中代表错误码项的key
 *  @param  block           结束（成功或者失败）后的处理block，其中bRet为YES表示成功，为NO表示失败；msg为失败时的描述
 */
-(void)getDictionaryAsynchronousWithRetCodeKeyFromUrl:(NSString*)url header:(NSDictionary *)headerDic postParam:(NSData *)paramData andRetCodeKeyStr:(NSString *)retCodeKeyStr withBlock:(void(^)(BOOL bRet, NSDictionary *retDic, NSString *msg))mainBlock
{
    [self getDictionaryAsynchronousFromUrl:url header:headerDic requestMethod:@"POST" getParam:nil postParam:paramData andRetCodeKey:retCodeKeyStr withBlock:^(BOOL bRet, NSDictionary *retDic, NSString *msg) {
        
        mainBlock(bRet, retDic, msg);
    }];
}


#pragma mark -
#pragma mark - synchronous(同步) and block

-(void)getDictionarySynchronousFromUrl:(NSString*)url withBlock:(void(^)(BOOL bRet, NSDictionary *retDic, NSString *msg))mainBlock
{
    [self getDictionarySynchronousFromUrl:url header:nil requestMethod:@"GET" getParam:nil postParam:nil withBlock:^(BOOL bRet, NSDictionary *retDic, NSString *msg) {
        
        mainBlock(bRet, retDic, msg);
    }];
}

-(void)getDictionarySynchronousFromUrl:(NSString*)url header:(NSDictionary *)headerDic withBlock:(void(^)(BOOL bRet, NSDictionary *retDic, NSString *msg))mainBlock
{
    [self getDictionarySynchronousFromUrl:url header:headerDic requestMethod:@"GET" getParam:nil postParam:nil withBlock:^(BOOL bRet, NSDictionary *retDic, NSString *msg) {
        
        mainBlock(bRet, retDic, msg);
    }];
}

-(void)getDictionarySynchronousFromUrl:(NSString*)url postParam:(NSData *)paramData withBlock:(void(^)(BOOL bRet, NSDictionary *retDic, NSString *msg))mainBlock
{
    [self getDictionarySynchronousFromUrl:url header:nil requestMethod:@"POST" getParam:nil postParam:paramData withBlock:^(BOOL bRet, NSDictionary *retDic, NSString *msg) {
        
        mainBlock(bRet, retDic, msg);
    }];
}

-(void)getDictionarySynchronousFromUrl:(NSString*)url header:(NSDictionary *)headerDic postParam:(NSData *)paramData withBlock:(void(^)(BOOL bRet, NSDictionary *retDic, NSString *msg))mainBlock
{
    [self getDictionarySynchronousFromUrl:url header:headerDic requestMethod:@"POST" getParam:nil postParam:paramData withBlock:^(BOOL bRet, NSDictionary *retDic, NSString *msg) {
        
        mainBlock(bRet, retDic, msg);
    }];
}

#pragma mark -
#pragma mark - synchronous(同步) nor block

-(NSDictionary*)getDictionarySynchronousFromUrl:(NSString*)url
{
    return [self getDictionarySynchronousFromUrl:url header:nil requestMethod:@"GET" getParam:nil postParam:nil];
}

-(NSDictionary*)getDictionarySynchronousFromUrl:(NSString*)url header:(NSDictionary *)headerDic
{
    return [self getDictionarySynchronousFromUrl:url header:headerDic requestMethod:@"GET" getParam:nil postParam:nil];
}

-(NSDictionary*) getDictionarySynchronousFromUrl:(NSString*)url postParam:(NSData *)paramData
{
    return [self getDictionarySynchronousFromUrl:url header:nil requestMethod:@"POST" getParam:nil postParam:paramData];
}

-(NSDictionary*)getDictionarySynchronousFromUrl:(NSString*)url header:(NSDictionary *)headerDic postParam:(NSData *)paramData
{
    return [self getDictionarySynchronousFromUrl:url header:headerDic requestMethod:@"POST" getParam:nil postParam:paramData];
}

#pragma mark -
#pragma mark - synchronous(同步) and multipart nor block
-(NSDictionary *)getDictionaryWithMultiPartSynchronousFromUrl:(NSString *)url header:(NSDictionary *)headerDic postParamKey1:(NSString *)paramKey1 postParamData1:(NSData *)paramData1 postParamKey2:(NSString *)paramKey2 postParamData2:(NSData *)paramData2
{
    return [self getDictionaryWithMultiPartSynchronousFromUrl:url header:headerDic requestMethod:@"POST" getParam:nil postParamKey1:paramKey1 postParamData1:paramData1 postParamKey2:paramKey2 postParamData2:paramData2];
}

#pragma mark -
#pragma mark - synchronous(异步) and multipart and block
-(void)getDictionaryWithMultiPartAsynchronousFromUrl:(NSString *)url header:(NSDictionary *)headerDic postParamKey1:(NSString *)paramKey1 postParamData1:(NSData *)paramData1 postParamKey2:(NSString *)paramKey2 postParamData2:(NSData *)paramData2 withBlock:(void(^)(BOOL bRet, NSDictionary *retDic, NSString *msg))mainBlock
{
    [self getDictionaryWithMultiPartAsynchronousFromUrl:url header:headerDic requestMethod:@"POST" getParam:nil postParamKey1:paramKey1 postParamData1:paramData1 postParamKey2:paramKey2 postParamData2:paramData2 withBlock:^(BOOL bRet, NSDictionary *retDic, NSString *msg) {
        
        mainBlock(bRet, retDic, msg);
    }];
}

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



/*
 *  @brief                  HTTP同步请求数据
 *
 *  @param  url             url宏，如：BL_HTTP_GET_DEVICENAME_JSON 表示：@"http://upgrade.broadlink.com.cn/soft/device-name.json"
 *  @param  headerDic       http头，可变字典
 *  @param  requestMethod   请求方法，如：GET/POST/PUT
 *  @param  paramString     GET方式请求的时候，url后面的附加参数，如：?userId=%@&session=%@
 *  @param  paramData       POST方式的时候，放在body中的NSData
 *
 *  @param  block           返回执行结果的block
 */
-(void)getDictionarySynchronousFromUrl:(NSString*)url header:(NSDictionary *)headerDic requestMethod:(NSString *)requestMethod getParam:(NSString *)paramString postParam:(NSData *)paramData withBlock:(void(^)(BOOL bRet, NSDictionary *retDic, NSString *msg))block
{
    //拼接URL
    NSString *tempUrl;
    if ([requestMethod isEqualToString:@"GET"])
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
    
    __weak ASIHTTPRequest *request = [ASIHTTPRequest requestWithURL:[NSURL URLWithString:tempUrl]];
    
    //如果是post方式提交，设置要提交的数据
    if ([requestMethod isEqualToString:@"POST"])
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
    
    //同步方式请求
    [request startSynchronous];
    
    NSError *error = [request error];
    if ((!error) && (200 == request.responseStatusCode))
    {
        NSData *responseData = request.responseData;
        NSString* responseString = [[NSString alloc] initWithData:responseData encoding:NSUTF8StringEncoding];
        NSDictionary *dic = [responseString objectFromJSONString];
        if ([dic[@"error"] intValue] == 0)
        {
            block(YES, dic, nil);
        }
        else
        {
            block(NO, dic, dic[@"msg"]);
        }
    }
    else
    {
        DLog(@"request.error.description");
        block(NO, nil, @"str_common_err_network");
    }
}

/*
 *  @brief                      HTTP同步请求数据
 *
 *  @param      url             url宏，如：BL_HTTP_GET_DEVICENAME_JSON 表示：@"http://upgrade.broadlink.com.cn/soft/device-name.json"
 *  @param      headerDic       http头，可变字典
 *  @param      requestMethod   请求方法，如：GET/POST/PUT
 *  @param      paramString     GET方式请求的时候，url后面的附加参数，如：?userId=%@&session=%@
 *  @param      paramData       POST方式的时候，放在body中的NSData
 *
 *  @return     NSDictionary    返回执行结果的NSDictionary
 */
- (NSDictionary *)getDictionarySynchronousFromUrl:(NSString*)url header:(NSDictionary *)headerDic requestMethod:(NSString *)requestMethod getParam:(NSString *)paramString postParam:(NSData *)paramData
{
    //拼接URL
    NSString *tempUrl;
    if ([requestMethod isEqualToString:@"GET"])
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
    
    //同步方式请求
    [request startSynchronous];
    
    NSError *error = [request error];
    if ((!error) && (200 == request.responseStatusCode))
    {
        NSData *responseData = request.responseData;
        NSString* responseString = [[NSString alloc] initWithData:responseData encoding:NSUTF8StringEncoding];
        NSDictionary *dic = [responseString objectFromJSONString];
        return dic;
    }
    else
    {
        DLog(@"request.error.description");
        return [[NSDictionary alloc] initWithObjectsAndKeys:[NSNumber numberWithBool:NO] ,@"succeed", nil, @"dic", @"str_common_err_network", @"error",nil];
    }
}

/*
 *  @brief                  HTTP同步请求提交多块数据
 *
 *  @param  url             url宏，如：BL_HTTP_GET_DEVICENAME_JSON 表示：@"http://upgrade.broadlink.com.cn/soft/device-name.json"
 *  @param  headerDic       http头，可变字典
 *  @param  requestMethod   请求方法，如：GET/POST/PUT
 *  @param  paramString     GET方式请求的时候，url后面的附加参数，如：?userId=%@&session=%@
 *  @param  paramKey1       multi-part方式提交的时候POST的第一部分数据对应的key
 *  @param  paramData       multi-part方式提交的时候POST的第一部分数据NSData
 *  @param  paramKey2       multi-part方式提交的时候POST的第二部分数据对应的key
 *  @param  paramData2      multi-part方式提交的时候POST的第二部分数据NSData
 *
 *  @return     NSDictionary    返回执行结果的NSDictionary
 */
- (NSDictionary *)getDictionaryWithMultiPartSynchronousFromUrl:(NSString*)url header:(NSDictionary *)headerDic requestMethod:(NSString *)requestMethod getParam:(NSString *)paramString postParamKey1:(NSString *)paramKey1 postParamData1:(NSData *)paramData1 postParamKey2:(NSString *)paramKey2 postParamData2:(NSData *)paramData2
{
    //拼接URL
    NSString *tempUrl;
    if ([requestMethod isEqualToString:@"GET"])
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
    
    ASIFormDataRequest *request = [ASIFormDataRequest requestWithURL:[NSURL URLWithString:tempUrl]];
    request.delegate = self; // 设置委托
    
    //如果是post方式提交，设置要提交的数据
    if ([requestMethod isEqualToString:@"POST"] && paramData1 && paramData2)
    {
        [request addData:paramData1 forKey:paramKey1];
        [request addData:paramData2 forKey:paramKey2];
    }
    
    //设置http header
    if (headerDic)
    {
        NSMutableDictionary *tempMutableDic = [[NSMutableDictionary alloc] initWithDictionary:headerDic];
        [request setRequestHeaders:tempMutableDic];
        NSString *contentType = [NSString stringWithFormat:@"multipart/form-data;"];
        [request addRequestHeader:contentType value:@"Content-Type"];
    }
    
    //设置提交的方式GET/POST
    if (requestMethod)
    {
        [request setRequestMethod:requestMethod];
    }
    
    //同步方式请求
    [request startSynchronous];
    
    NSError *error = [request error];
    if ((!error) && (200 == request.responseStatusCode))
    {
        NSData *responseData = request.responseData;
        NSString* responseString = [[NSString alloc] initWithData:responseData encoding:NSUTF8StringEncoding];
        NSDictionary *dic = [responseString objectFromJSONString];
        return dic;
    }
    else
    {
        DLog(@"request.error.description");
        return [[NSDictionary alloc] initWithObjectsAndKeys:[NSNumber numberWithBool:NO] ,@"succeed", nil, @"dic", @"str_common_err_network", @"error",nil];
    }
}

/*
 *  @brief                  HTTP异步请求提交多块数据
 *
 *  @param  url             url宏，如：BL_HTTP_GET_DEVICENAME_JSON 表示：@"http://upgrade.broadlink.com.cn/soft/device-name.json"
 *  @param  headerDic       http头，可变字典
 *  @param  requestMethod   请求方法，如：GET/POST/PUT
 *  @param  paramString     GET方式请求的时候，url后面的附加参数，如：?userId=%@&session=%@
 *  @param  paramKey1       multi-part方式提交的时候POST的第一部分数据对应的key
 *  @param  paramData       multi-part方式提交的时候POST的第一部分数据NSData
 *  @param  paramKey2       multi-part方式提交的时候POST的第二部分数据对应的key
 *  @param  paramData2      multi-part方式提交的时候POST的第二部分数据NSData
 *
 *  @param  block           返回执行结果的block
 */
- (void)getDictionaryWithMultiPartAsynchronousFromUrl:(NSString*)url header:(NSDictionary *)headerDic requestMethod:(NSString *)requestMethod getParam:(NSString *)paramString postParamKey1:(NSString *)paramKey1 postParamData1:(NSData *)paramData1 postParamKey2:(NSString *)paramKey2 postParamData2:(NSData *)paramData2 withBlock:(void(^)(BOOL bRet, NSDictionary *retDic, NSString *msg))block
{
    //拼接URL
    NSString *tempUrl;
    if ([requestMethod isEqualToString:@"GET"])
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
    
    __weak ASIFormDataRequest *request = [ASIFormDataRequest requestWithURL:[NSURL URLWithString:tempUrl]];
    
    //如果是post方式提交，设置要提交的数据
    if ([requestMethod isEqualToString:@"POST"])
    {
        if (paramData1)
        {
            [request addData:paramData1 forKey:paramKey1];
        }
        
        if (paramData2)
        {
            [request addData:paramData2 forKey:paramKey2];
        }
    }
    
    //设置http header
    if (headerDic)
    {
        NSMutableDictionary *tempMutableDic = [[NSMutableDictionary alloc] initWithDictionary:headerDic];
        [request setRequestHeaders:tempMutableDic];
        NSString *contentType = [NSString stringWithFormat:@"multipart/form-data;"];
        [request addRequestHeader:contentType value:@"Content-Type"];
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
        if ([dic[@"error"] intValue] == 0)
        {
            block(YES,dic,nil);
        }
        else
        {
            block(NO,dic,dic[@"msg"]);
        }
    }];
    
    [request setFailedBlock:^{
        
        DLog(@"request.error.description");
        block(NO, nil, @"str_common_err_network");
    }];
}

/*
 *  @brief                  HTTP异步请求提交表单数据，仅用于DNAKit平台的接口
 *
 *  @param  url             url宏，如：BL_HTTP_GET_DEVICENAME_JSON 表示：@"http://upgrade.broadlink.com.cn/soft/device-name.json"
 *  @param  headerDic       http头，可变字典
 *  @param  requestMethod   请求方法，如：GET/POST/PUT
 *  @param  paramString     GET方式请求的时候，url后面的附加参数，如：?userId=%@&session=%@
 *  @param  postDic         表单数据字典，可动态变化
 *
 *  @param  block           返回执行结果的block
 */
- (void)getDictionaryWithFormDataAsynchronousFromUrl:(NSString*)url header:(NSDictionary *)headerDic requestMethod:(NSString *)requestMethod getParam:(NSString *)paramString postParam:(NSDictionary *)postDic withBlock:(void(^)(BOOL bRet, NSDictionary *retDic, NSString *msg))block
{
    //拼接URL
    NSString *tempUrl;
    if ([requestMethod isEqualToString:@"GET"])
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
    
    __weak ASIFormDataRequest *request = [ASIFormDataRequest requestWithURL:[NSURL URLWithString:tempUrl]];
    
    //如果是post方式提交，设置要提交的数据
    if ([requestMethod isEqualToString:@"POST"] && postDic)
    {
        NSArray *keys = [postDic allKeys];
        for (NSString *key in keys)
        {
            [request setPostValue:[postDic valueForKey:key] forKey:key];
        }
    }
    
    //设置http header
    if (headerDic)
    {
        NSMutableDictionary *tempMutableDic = [[NSMutableDictionary alloc] initWithDictionary:headerDic];
        [request setRequestHeaders:tempMutableDic];
        NSString *contentType = [NSString stringWithFormat:@"text/xml; charset=utf-8;"];
        [request addRequestHeader:contentType value:@"Content-Type"];
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
        if ([dic[@"error"] intValue] == 1)
        {
            block(YES,dic,nil);
        }
        else
        {
            block(NO,dic,dic[@"msg"]);
        }
    }];
    
    [request setFailedBlock:^{
        
        block(NO, nil, request.error.description);
    }];
}

- (NSDictionary *)getDictionarySynchronousFromUrl:(NSString*)url header:(NSDictionary *)headerDic postDatas:(NSData*) paramData,...
{
    ASIHTTPRequest *request = [ASIHTTPRequest requestWithURL:[NSURL URLWithString:url]];
    
    //设置http header
    if (headerDic)
    {
        NSMutableDictionary *tempMutableDic = [[NSMutableDictionary alloc] initWithDictionary:headerDic];
        [tempMutableDic setObject:@"multipart/form-data" forKey:@"Content-Type"];
        [request setRequestHeaders:tempMutableDic];
    }
    va_list params;
    va_start(params,paramData);
    
    if (paramData) {
        
        [request appendPostData:paramData];
        NSData* otherData = nil;
        //这里是问题的所在 网上的例子，没有保存第一个参数地址，后边循环，指针将不会在指向第一个参数
        while( (otherData = va_arg(params, NSData*)) )
        {
            [request appendPostData:otherData];
        }
        //置空
        va_end(params);
        
    }
    //设置提交的方式POST
    [request setRequestMethod:@"POST"];
    
    //同步方式请求
    [request startSynchronous];
    
    NSError *error = [request error];
    if ((!error) && (200 == request.responseStatusCode))
    {
        NSData *responseData = request.responseData;
        NSString* responseString = [[NSString alloc] initWithData:responseData encoding:NSUTF8StringEncoding];
        NSDictionary *dic = [responseString objectFromJSONString];
        return dic;
    }
    else
    {
        DLog(@"request.error.description");
        return [[NSDictionary alloc] initWithObjectsAndKeys:[NSNumber numberWithBool:NO], @"succeed", nil, @"dic", @"str_common_err_network", @"error",nil];
    }
}

@end
