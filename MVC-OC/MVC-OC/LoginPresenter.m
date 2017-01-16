//
//  LoginPresenter.m
//  MVC-OC
//
//  Created by mac on 17/1/13.
//  Copyright © 2017年 zhang. All rights reserved.
//

#import "LoginPresenter.h"

@interface LoginPresenter ()

@property(nonatomic) LoginModel *loginModel;
@property(nonatomic) id<LoginView> loginView;

@end


@implementation LoginPresenter

-(instancetype)init
{
    self = [super init];
    if (self) {
        _loginModel = [[LoginModel alloc]init];
    }
    return self;
}

//绑定view
-(void)attachView:(id<LoginView>)loginView
{
    _loginView = loginView;
}
//解除绑定view
//为什么解除绑定？  因为我们的ViewController退出了，正好访问网络，不需要更新UI了
-(void)detaChView
{
    _loginView = nil;
}

-(void)login:(NSString *)name pwd:(NSString *)pwd
{
    [_loginModel loginName:name pwd:pwd callback:^(NSString *result) {
        
        if (_loginView!=nil) {
            [_loginView onLoginReluest:result];
        }
    }];
}

@end
