//
//  MainVC.h
//  LoginText
//
//  Created by WLY on 16/7/28.
//  Copyright © 2016年 WLY. All rights reserved.
//
/**
 * applegate类辅助类, 负责登陆,与用户信息管理
 */

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>


@interface MainController : NSObject


+ (MainController *)sharedInstance;

- (void)login:(BOOL)animation;


@end
