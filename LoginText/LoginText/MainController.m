//
//  MainVC.m
//  LoginText
//
//  Created by WLY on 16/7/28.
//  Copyright © 2016年 WLY. All rights reserved.
//

#import "MainController.h"
#import "LoginViewController.h"
#import "LocalRootViewController.h"
#import "RemoteRootViewController.h"
#import "ICELogin.h"


@interface MainController ()

@end

@implementation MainController

+ (instancetype)sharedInstance{
    static id sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[self alloc] init];
    });
    return sharedInstance;
}


- (void)login:(BOOL)animation{
    
    LoginViewController * loginVC = [[LoginViewController alloc] init];
    loginVC.view.backgroundColor = [UIColor blueColor];
    [loginVC loginCompletion:^(NSString *userName, NSString *password) {
        if (userName.length > 0) {
            [self p_loginLocal];
        }else{
            [self p_loginRemote];
        }
    }];
    
    [ICELogin showLoginController:loginVC withAnimatino:animation];
}


- (void)p_loginLocal{
    
    LocalRootViewController *rootVC = [[LocalRootViewController alloc] init];
    rootVC.view.backgroundColor = [UIColor redColor];
    rootVC.title = @"Local";
    UINavigationController *navi = [[UINavigationController alloc] initWithRootViewController:rootVC];
    
    [ICELogin showMainViewController:navi];
}


- (void)p_loginRemote{
    RemoteRootViewController *rootVC = [[RemoteRootViewController alloc] init];
    rootVC.view.backgroundColor = [UIColor yellowColor];
    rootVC.title = @"Remote";
    
    UINavigationController *navi = [[UINavigationController alloc] initWithRootViewController:rootVC];
    [ICELogin showMainViewController:navi];

}


@end
