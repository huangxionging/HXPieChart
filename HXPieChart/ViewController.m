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
    
    _pieChartView = [[HXPieChartView alloc] initWithFrame: CGRectMake(100, 100, 150, 150)];
    
    [_pieChartView scaleEdgeValue: 10 forKey: @"left"];
    [_pieChartView scaleEdgeValue: self.view.width - 10 forKey: @"right"];
    _pieChartView.height += 100;
    _pieChartView.top = 200;
    [self.view addSubview: _pieChartView];
    

    NSLog(@"%lf", _pieChartView.left);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
