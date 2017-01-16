//
//  HttpUtils.h
//  MVC-OC
//
//  Created by mac on 17/1/13.
//  Copyright © 2017年 zhang. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void(^CallBack)(NSString *result);
@interface HttpUtils : NSObject


//发送post请求
+(void)post:(NSString *)name pwd:(NSString *)psd callback:(CallBack)callback;

@end
