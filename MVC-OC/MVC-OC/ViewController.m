//
//  ViewController.m
//  MVC-OC
//
//  Created by mac on 17/1/13.
//  Copyright © 2017年 zhang. All rights reserved.
//

#import "ViewController.h"
#import "LoginView.h"
#import "LoginPresenter.h"

@interface ViewController ()<LoginView>
@property(nonatomic) LoginPresenter *presenter;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    _presenter = [[LoginPresenter alloc]init];
    [_presenter attachView:self];
    [_presenter login:@"zw" pwd:@"123456"];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    [_presenter detaChView];
    
}

-(void)onLoginReluest:(NSString *)reluesr
{
    NSLog(@"登录返回的结果 -- %@",reluesr);
}


@end
