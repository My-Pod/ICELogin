//
//  ICELogin.h
//  LoginText
//
//  Created by WLY on 16/7/29.
//  Copyright © 2016年 WLY. All rights reserved.
//
//登陆显示控pod update --no-repo-update件

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>



@interface ICELogin : NSObject

+ (instancetype)sharedInstance;

/**
 *  Show LoginVC on a new window what make it key.
 */
+ (void)showLoginController:(UIViewController *)loginVC
              withAnimatino:(BOOL)animation;

/**
 *  Only dismiss LoginVC, and show old rootViewController of appdelegate.
 */
+ (void)dismissLoginController;

/**
 *  Dismiss loginVC and show a new MainVC what handle switch appdelegate.window.rootViewController
 *
 *  @param mainVC A new rootViewController of appdelegate.window
 */
+ (void)showMainViewController:(UIViewController *)mainVC;

@end
