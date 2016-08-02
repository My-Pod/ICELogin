//
//  LocalRootViewController.m
//  LoginText
//
//  Created by WLY on 16/7/28.
//  Copyright © 2016年 WLY. All rights reserved.
//

#import "LocalRootViewController.h"
#import "MainController.h"

extern NSString *account;
extern NSString *serviceName;
extern NSString *key;
@interface LocalRootViewController ()

@end

@implementation LocalRootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
}
- (IBAction)switchLogin:(id)sender {
    UIAlertController *alertControl = [UIAlertController alertControllerWithTitle:@"登陆" message:@"是否登陆 ?" preferredStyle:UIAlertControllerStyleAlert];

    UIAlertAction *acion = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        [[MainController sharedInstance] login:YES];
    }];
    
    UIAlertAction *cncle = [UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
    }];
    [alertControl addAction:acion];
    [alertControl addAction:cncle];
    
    [self presentViewController:alertControl animated:YES completion:nil];
    
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
