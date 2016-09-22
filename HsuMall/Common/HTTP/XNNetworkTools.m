//
//  XNNetworkTools.m
//  HsuMall
//
//  Created by xuning on 16/9/21.
//  Copyright © 2016年 xuning. All rights reserved.
//

#import "XNNetworkTools.h"
/**
 *  网络工具协议
 */
@protocol NetworkToolsProxy <NSObject>

/**
 *  网络请求方法 - AFN 核心代码
 *
 *  @param method           HTTP 请求方法
 *  @param URLString        URLString
 *  @param parameters       参数字典
 *  @param uploadProgress   长传进度
 *  @param downloadProgress 下载进度
 *  @param success          成功回调
 *  @param failure          失败回调
 *
 *  @return NSURLSessionDataTask
 */
@optional
- (NSURLSessionDataTask *)dataTaskWithHTTPMethod:(NSString *)method
                                       URLString:(NSString *)URLString
                                      parameters:(id)parameters
                                  uploadProgress:(nullable void (^)(NSProgress *uploadProgress)) uploadProgress
                                downloadProgress:(nullable void (^)(NSProgress *downloadProgress)) downloadProgress
                                         success:(void (^)(NSURLSessionDataTask *, id))success
                                         failure:(void (^)(NSURLSessionDataTask *, NSError *))failure;


@end

/**
 *  遵守网络协议 - 智能提示
 */
@interface XNNetworkTools () <NetworkToolsProxy>

@end
#define baseURL  [NSURL URLWithString:@"http://demo.lohoyun.com/json/"]
@implementation XNNetworkTools
+ (instancetype)sharedTools {
    static XNNetworkTools *tools;
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        
        /**
         NSURL *baseURL = [NSURL URLWithString:@"http://example.com/v1/"];
         [NSURL URLWithString:@"foo" relativeToURL:baseURL];                  // http://example.com/v1/foo
         [NSURL URLWithString:@"foo?bar=baz" relativeToURL:baseURL];          // http://example.com/v1/foo?bar=baz
         [NSURL URLWithString:@"/foo" relativeToURL:baseURL];                 // http://example.com/foo
         [NSURL URLWithString:@"foo/" relativeToURL:baseURL];                 // http://example.com/v1/foo
         [NSURL URLWithString:@"/foo/" relativeToURL:baseURL];                // http://example.com/foo/
         [NSURL URLWithString:@"http://example2.com/" relativeToURL:baseURL]; // http://example2.com/
         */
        tools = [[self alloc]initWithBaseURL:baseURL];
        
        // 设置反序列化格式
        tools.responseSerializer.acceptableContentTypes = [NSSet setWithObjects:@"application/json", @"text/json", @"text/javascript", @"text/html", nil];
    });
    
    return tools;
}


/**
 *  请求网络的方法
 *
 *  @param method     GET /POST
 *  @param URLString  URLString
 *  @param parameters 参数
 *  @param finished   完成的回调
 */
- (void)request:(XNRequestMethod)method URLString:(NSString *)URLString parameters:(id) parameters finished:XNRequesCallBack {
    
    NSString *methodName = (method == GET) ? @"GET" : @"POST";
    
    //dataTaskWithHTTPMethod 本来没有实现,但是父类实现了
    [[self dataTaskWithHTTPMethod:methodName
                        URLString:URLString
                       parameters:parameters
                   uploadProgress:nil
                 downloadProgress:nil
                          success:^(NSURLSessionDataTask *task, id responseObject) {
                              
                              finished(responseObject, nil);
                              
                          } failure:^(NSURLSessionDataTask *task, NSError *error) {
                              finished(nil,error);
                              
                              NSLog(@"error--%@",error);
                          }] resume];
    
}

/**
 展示首页数据
 */
- (void)loadHomePageFinished:XNRequesCallBack {
    
    NSString *homeURLString = [[NSURL URLWithString:@"index.php?acr=app&act=index" relativeToURL:baseURL] absoluteString];
    
    [self request:POST URLString:homeURLString parameters:nil finished:XNRequesCallBack];
}

@end
