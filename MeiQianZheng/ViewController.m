//
//  ViewController.m
//  MeiQianZheng
//
//  Created by msn on 16/7/14.
//  Copyright © 2016年 ZYL. All rights reserved.
//

#import "ViewController.h"
#import "CommodityListViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIButton * button = [[UIButton alloc] initWithFrame:CGRectMake(100, 100, 100, 40)];
    [button setBackgroundColor:[UIColor redColor]];
    [self.view addSubview:button];
    [button addTarget:self action:@selector(buttonClick:) forControlEvents:UIControlEventTouchUpInside];
}

- (void)buttonClick:(UIButton *)button
{
    CommodityListViewController * controller = [[CommodityListViewController alloc] init];
    [self.navigationController pushViewController:controller animated:YES];
}
@end
