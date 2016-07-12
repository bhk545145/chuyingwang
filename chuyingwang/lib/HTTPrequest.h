//
//  HTTPrequest.h
//  chuyingwang
//
//  Created by 白洪坤 on 16/7/11.
//  Copyright © 2016年 白洪坤. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HTTPrequest : NSObject

#pragma mark - http请求数据相关
-(void)getDictionaryAsynchronousFromUrl:(NSString*)url withBlock:(void(^)(BOOL bRet, NSDictionary *retDic, NSString *msg))mainBlock;
-(void)getDictionaryAsynchronousFromUrl:(NSString*)url header:(NSDictionary *)headerDic withBlock:(void(^)(BOOL bRet, NSDictionary *retDic, NSString *msg))mainBlock;
-(void)getDictionaryAsynchronousFromUrl:(NSString*)url postParam:(NSData *)paramData withBlock:(void(^)(BOOL bRet, NSDictionary *retDic, NSString *msg))mainBlock;
-(void)getDictionaryAsynchronousFromUrl:(NSString*)url header:(NSDictionary *)headerDic postParam:(NSData *)paramData withBlock:(void(^)(BOOL bRet, NSDictionary *retDic, NSString *msg))mainBlock;
-(void)getDictionaryAsynchronousFromUrl:(NSString*)url header:(NSDictionary *)headerDic postParam:(NSData *)paramData andKey:(NSString *)key andIV:(u_int8_t *)iv withBlock:(void(^)(BOOL bRet, NSDictionary *retDic, NSString *msg))mainBlock;

-(void)getDictionarySynchronousFromUrl:(NSString*)url withBlock:(void(^)(BOOL bRet, NSDictionary *retDic, NSString *msg))mainBlock;
-(void)getDictionarySynchronousFromUrl:(NSString*)url header:(NSDictionary *)headerDic withBlock:(void(^)(BOOL bRet, NSDictionary *retDic, NSString *msg))mainBlock;
-(void)getDictionarySynchronousFromUrl:(NSString*)url postParam:(NSData *)paramData withBlock:(void(^)(BOOL bRet, NSDictionary *retDic, NSString *msg))mainBlock;
-(void)getDictionarySynchronousFromUrl:(NSString*)url header:(NSDictionary *)headerDic postParam:(NSData *)paramData withBlock:(void(^)(BOOL bRet, NSDictionary *retDic, NSString *msg))mainBlock;

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
-(void)getDictionaryAsynchronousFromUrl:(NSString*)url header:(NSDictionary *)headerDic requestMethod:(NSString *)requestMethod getParam:(NSString *)paramString postParam:(NSData *)paramData andRetCodeKey:(NSString *)retCodeKey withBlock:(void(^)(BOOL bRet, NSDictionary *retDic, NSString *msg))block;
/*
 *  @brief                  HTTP异步请求数据，需解密（aes）
 *
 *  @param  url             url宏，如：BL_HTTP_GET_DEVICENAME_JSON 表示：@"http://upgrade.broadlink.com.cn/soft/device-name.json"
 *  @param  headerDic       http头，可变字典
 *  @param  requestMethod   请求方法，如：GET/POST/PUT
 *  @param  paramString     GET方式请求的时候，url后面的附加参数，如：?userId=%@&session=%@
 *  @param  paramData       POST方式的时候，放在body中的NSData
 *
 *  @param  block           返回执行结果的block
 */
-(void)getDictionaryAsynchronousFromUrl:(NSString*)url header:(NSDictionary *)headerDic requestMethod:(NSString *)requestMethod getParam:(NSString *)paramString postParam:(NSData *)paramData andKey:(NSString *)key andIV:(uint8_t *)iv withBlock:(void(^)(BOOL bRet, NSDictionary *retDic, NSString *msg))block;

-(void)getDictionarySynchronousFromUrl:(NSString*)url header:(NSDictionary *)headerDic requestMethod:(NSString *)requestMethod getParam:(NSString *)paramString postParam:(NSData *)paramData withBlock:(void(^)(BOOL bRet, NSDictionary *retDic, NSString *msg))block;
// no black
-(NSDictionary*)getDictionarySynchronousFromUrl:(NSString*)url;
-(NSDictionary*)getDictionarySynchronousFromUrl:(NSString*)url header:(NSDictionary *)headerDic;
-(NSDictionary*)getDictionarySynchronousFromUrl:(NSString*)url postParam:(NSData *)paramData;
-(NSDictionary*)getDictionarySynchronousFromUrl:(NSString*)url header:(NSDictionary *)headerDic postParam:(NSData *)paramData;
- (NSDictionary *)getDictionarySynchronousFromUrl:(NSString*)url header:(NSDictionary *)headerDic requestMethod:(NSString *)requestMethod getParam:(NSString *)paramString postParam:(NSData *)paramData;
//synchronous(同步) and multipart nor block
-(NSDictionary *)getDictionaryWithMultiPartSynchronousFromUrl:(NSString *)url header:(NSDictionary *)headerDic postParamKey1:(NSString *)paramKey1 postParamData1:(NSData *)paramData1 postParamKey2:(NSString *)paramKey2 postParamData2:(NSData *)paramData2;
//synchronous(异步) and multipart and block
-(void)getDictionaryWithMultiPartAsynchronousFromUrl:(NSString *)url header:(NSDictionary *)headerDic postParamKey1:(NSString *)paramKey1 postParamData1:(NSData *)paramData1 postParamKey2:(NSString *)paramKey2 postParamData2:(NSData *)paramData2 withBlock:(void(^)(BOOL bRet, NSDictionary *retDic, NSString *msg))mainBlock;


@end
