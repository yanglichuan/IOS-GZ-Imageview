//
//  ViewController.m
//  01-作业QQ登录界面
//
//  Created by Apple on 14/12/10.
//  Copyright (c) 2014年 itcast. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

//QQ的文本框
@property (weak, nonatomic) IBOutlet UITextField *qqField;

@property (weak, nonatomic) IBOutlet UITextField *pwdField;
//第一种：无参数
- (IBAction)login;

//第二种情况：带有一个参数，触发这个事件的控件
- (IBAction)login:(UIButton *)sender;
//第三种情况：带有两个参数，一个触发这个事件的控件，另外一个是触发的事件
- (IBAction)login:(id)sender forEvent:(UIEvent *)event;


@end

@implementation ViewController


- (IBAction)login:(UIButton *)sender {
    
    NSLog(@"%@",sender);
    
}

- (IBAction)login:(id)sender forEvent:(UIEvent *)event {
    
    NSLog(@"%@\n%@",sender,event);
}
- (IBAction)login {
    
//  取出QQ
   NSString *qq  = self.qqField.text;
// 取出密码
    NSString *pwd = self.pwdField.text;
    
    NSLog(@"QQ:%@ 密码：%@",qq,pwd);
    
//    [self.qqField resignFirstResponder];
//  退出键盘
    [self.view endEditing:YES];
    
}
@end
