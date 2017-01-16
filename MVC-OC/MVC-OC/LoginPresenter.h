//
//  LoginPresenter.h
//  MVC-OC
//
//  Created by mac on 17/1/13.
//  Copyright © 2017年 zhang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LoginModel.h"
#import "LoginView.h"

//P层

@interface LoginPresenter : NSObject

//绑定view
-(void)attachView:(id<LoginView>)loginView;
//解除绑定view
//为什么解除绑定？  因为我们的ViewController退出了，正好访问网络，不需要更新UI了
-(void)detaChView;

-(void)login:(NSString *)name pwd:(NSString *)pwd;

@end
