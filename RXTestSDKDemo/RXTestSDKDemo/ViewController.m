//
//  ViewController.m
//  RXTestSDKDemo
//
//  Created by wangliang on 2024/3/27.
//

#import "ViewController.h"
#import <Masonry/Masonry.h>
#import <RXTestSDK/RXTestSDK.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UIButton *btn1 = [[UIButton alloc] init];
    [btn1 setTitle:@"登录" forState:UIControlStateNormal];
    [btn1 setBackgroundColor:[UIColor redColor]];
    [btn1 addTarget:self action:@selector(btnAction1) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn1];
    
    [btn1 mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.view).offset(10);
            make.top.equalTo(self.view).offset(100);
            make.width.mas_equalTo(120);
            make.height.mas_equalTo(30);
    }];
    
    UIButton *btn2 = [[UIButton alloc] init];
    [btn2 setTitle:@"分享" forState:UIControlStateNormal];
    [btn2 setBackgroundColor:[UIColor redColor]];
    [btn2 addTarget:self action:@selector(btnAction2) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn2];
    
    [btn2 mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(btn1.mas_trailing).offset(10);
            make.top.equalTo(btn1);
            make.width.mas_equalTo(120);
            make.height.mas_equalTo(30);
    }];
    
    UIButton *btn3 = [[UIButton alloc] init];
    [btn3 setTitle:@"支付" forState:UIControlStateNormal];
    [btn3 setBackgroundColor:[UIColor redColor]];
    [btn3 addTarget:self action:@selector(btnAction3) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn3];
    
    [btn3 mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(btn2.mas_trailing).offset(10);
            make.top.equalTo(btn1);
            make.width.mas_equalTo(120);
            make.height.mas_equalTo(30);
    }];
    
}

- (void)btnAction1
{
    [[RXTestService shareSDK] login];
}

- (void)btnAction2
{
    [[RXTestService shareSDK] share];
}

- (void)btnAction3
{
    [[RXTestService shareSDK] pay];
}

@end
