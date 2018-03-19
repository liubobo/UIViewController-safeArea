//
//  ViewController.m
//  SafeAreaCategory
//
//  Created by liubo on 2018/3/19.
//  Copyright © 2018年 liubo. All rights reserved.
//

#import "ViewController.h"
#import "UIViewController+safeArea.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    UIView *view = [UIView new];
    [self.view addSubview:view];
    view.backgroundColor = [UIColor yellowColor];
    //设置contentview，四边都在安全区域
    [self am_makeSafeView:view];

    UIButton *button = [UIButton new];
    button.backgroundColor = [UIColor redColor];
    [button setTitle:@"我是按钮" forState:UIControlStateNormal];
    [button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [self.view addSubview:button];

    //某一边，底部在安全区域
    [button mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.right.equalTo(self.view);
        make.height.equalTo(@60);
        make.bottom.equalTo(self.am_safeBottom).offset(-20);
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
