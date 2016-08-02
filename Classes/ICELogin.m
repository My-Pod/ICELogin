//
//  ICELogin.m
//  LoginText
//
//  Created by WLY on 16/7/29.
//  Copyright © 2016年 WLY. All rights reserved.
//

#import "ICELogin.h"

@interface ICELogin ()

@property (nonatomic, strong) UIWindow *loginWindow;
@property (nonatomic, strong, readonly) UIWindow *mainWindow;

@end
@implementation ICELogin

+ (instancetype)sharedInstance{
    static id sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[self alloc] init];
    });
    return sharedInstance;
}

- (UIWindow *)mainWindow{
    return [UIApplication sharedApplication].windows.firstObject;
}


- (UIWindow *)loginWindow{
    if (!_loginWindow) {
        _loginWindow = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
        _loginWindow.windowLevel = self.mainWindow.windowLevel + 1;
        _loginWindow.backgroundColor = [UIColor redColor];
    }
    return _loginWindow;
}

+ (void)showLoginController:(UIViewController *)loginVC withAnimatino:(BOOL)animation{
    ICELogin *login = [ICELogin sharedInstance];
    login.loginWindow.rootViewController = loginVC;
    [login.loginWindow makeKeyAndVisible];
    
    if (animation) {
        CGRect frame = login.loginWindow.frame;
        frame.origin.y = frame.size.height;
        login.loginWindow.frame = frame;
        [UIView animateWithDuration:0.25 delay:0 options:UIViewAnimationOptionTransitionFlipFromBottom animations:^{
            login.loginWindow.frame = [UIScreen mainScreen].bounds;
        } completion:nil];
    }
}


+ (void)dismissLoginController{

    ICELogin *login = [ICELogin sharedInstance];
    [login.mainWindow makeKeyAndVisible];
    [UIView animateWithDuration:0.25 delay:0 options:UIViewAnimationOptionTransitionFlipFromTop animations:^{
        CGRect frame = login.loginWindow.frame;
        frame.origin.y = frame.size.height;
        login.loginWindow.frame = frame;
    } completion:^(BOOL finished) {
        login.loginWindow.rootViewController = nil;
        [login.loginWindow resignKeyWindow];
        [login.loginWindow removeFromSuperview];
        login.loginWindow = nil;
    }];
}


+ (void)showMainViewController:(UIViewController *)mainVC{
    ICELogin *login = [ICELogin sharedInstance];
    login.mainWindow.rootViewController = mainVC;
    [ICELogin dismissLoginController];
}


@end
