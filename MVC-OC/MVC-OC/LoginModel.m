//
//  LoginModel.m
//  MVC-OC
//
//  Created by mac on 17/1/13.
//  Copyright © 2017年 zhang. All rights reserved.
//

#import "LoginModel.h"
@implementation LoginModel

-(void)loginName:(NSString *)name pwd:(NSString *)pwd callback:(CallBack)callback
{
    [HttpUtils post:name pwd:pwd callback:^(NSString *result) {

        callback(result);
        
    }];
}
@end
// M 层
