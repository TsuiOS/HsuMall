//
//  XNNetworkTools.h
//  HsuMall
//
//  Created by xuning on 16/9/21.
//  Copyright © 2016年 xuning. All rights reserved.
//

#import <AFNetworking/AFNetworking.h>

#define XNRequesCallBack (void (^)(id result, NSError *error))finished
/**
 请求方式枚举
 */
typedef enum : NSUInteger {
    GET,
    POST,
    
} XNRequestMethod;

@interface XNNetworkTools : AFHTTPSessionManager

+ (instancetype)sharedTools;

/** 请求网络的方法 */
- (void)request:(XNRequestMethod)method URLString:(NSString *)URLString parameters:(id) parameters finished:XNRequesCallBack;

/**
 首页数据请求的方法
 */
- (void)loadHomePageFinished:XNRequesCallBack;
@end
