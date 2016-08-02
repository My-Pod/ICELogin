//
//  RemoteRootViewController.m
//  LoginText
//
//  Created by WLY on 16/7/28.
//  Copyright © 2016年 WLY. All rights reserved.
//

#import "RemoteRootViewController.h"
#import "MainController.h"
@interface RemoteRootViewController ()

@end

@implementation RemoteRootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)switchLogin:(id)sender {
    
    [[MainController sharedInstance] login:YES];
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
