//
//  LoginViewController.h
//  LoginText
//
//  Created by WLY on 16/7/28.
//  Copyright © 2016年 WLY. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LoginViewController : UIViewController


- (void)loginCompletion:(void (^) (NSString *userName, NSString *password))completion;

@end
