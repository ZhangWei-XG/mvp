//
//  LoginModel.h
//  MVC-OC
//
//  Created by mac on 17/1/13.
//  Copyright © 2017年 zhang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "HttpUtils.h"

typedef void(^CallBack)(NSString *result);

@interface LoginModel : NSObject

-(void)loginName:(NSString *)name pwd:(NSString *)pwd callback:(CallBack)callback;

@end
