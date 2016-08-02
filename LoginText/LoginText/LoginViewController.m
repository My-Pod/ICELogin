//
//  LoginViewController.m
//  LoginText
//
//  Created by WLY on 16/7/28.
//  Copyright © 2016年 WLY. All rights reserved.
//

#import "LoginViewController.h"

@interface LoginViewController ()

@property (nonatomic, copy) void (^completion) (NSString *userName, NSString *password);
@property (weak, nonatomic) IBOutlet UITextField *TF;
@property (weak, nonatomic) IBOutlet UITextField *password;

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}
- (IBAction)login:(id)sender {
    self.completion(self.TF.text,self.password.text);
}

- (void)loginCompletion:(void (^)(NSString *userName, NSString *password))completion{
    self.completion = completion;
}

- (void)dealloc{
    _completion = nil;
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
