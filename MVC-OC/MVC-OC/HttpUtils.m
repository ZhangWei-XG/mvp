//
//  HttpUtils.m
//  MVC-OC
//
//  Created by mac on 17/1/13.
//  Copyright © 2017年 zhang. All rights reserved.
//

#import "HttpUtils.h"

@implementation HttpUtils

+(void)post:(NSString *)name pwd:(NSString *)psd callback:(CallBack)callback
{
    NSURL *url = [[NSURL alloc]initWithString:@""];
    NSMutableURLRequest *request = [[NSMutableURLRequest alloc]initWithURL:url];
    request.HTTPMethod = @"POST";
    NSString *params = [NSString stringWithFormat:@"username=%@&password=%@",name,psd];
    request.HTTPMethod = params;
    request.HTTPBody = [params dataUsingEncoding:NSUTF8StringEncoding];
    NSURLSession *session = [NSURLSession sharedSession];
   
    NSURLSessionDataTask *task = [session dataTaskWithRequest:request completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        if (error) {
            callback(@"123123123");

        }else{
            NSString *result = [[NSString alloc]initWithData:data encoding:NSUTF8StringEncoding];
            callback(result);
        }
    }];
    [task resume];
}

@end
