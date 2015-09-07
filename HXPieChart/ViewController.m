//
//  ViewController.m
//  HXPieChart
//
//  Created by huangxiong on 15/8/29.
//  Copyright (c) 2015年 huangxiong. All rights reserved.
//

#import "ViewController.h"
#import "HXPieChartView.h"

@interface ViewController ()

@property (nonatomic, strong) HXPieChartView *pieChartView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor whiteColor];
    
    [self.view scaleValue: [NSNumber numberWithFloat: 128] forKey: @"left"];
    [self.view scaleEdgeValue: 100 forKey: @"right"];
    self.view.backgroundColor = [UIColor redColor];
    NSLog(@"%lf", self.view.left);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
