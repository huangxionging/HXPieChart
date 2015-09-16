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
    
    _pieChartView = [[HXPieChartView alloc] initWithFrame: CGRectMake(100, 100, 150, 250)];
    _pieChartView.backgroundColor = [UIColor whiteColor];
    [_pieChartView scaleEdgeValue: 10 forKey: @"left"];
    [_pieChartView scaleEdgeValue: self.view.width - 10 forKey: @"right"];
    _pieChartView.height += 100;
    _pieChartView.top = 200;
    [self.view addSubview: _pieChartView];
    
    HXPieModel *model1 = [[HXPieModel alloc] init];
    model1.value = 0.5;
    model1.colorValue = 0xFC9478;
    [_pieChartView.dataArray addObject: model1];
    
    
    HXPieModel *model2 = [[HXPieModel alloc] init];
    model2.value = 0.2;
    model2.colorValue = 0xF9D586;
    [_pieChartView.dataArray addObject: model2];
    
    HXPieModel *model3 = [[HXPieModel alloc] init];
    model3.value = 0.2;
    model3.colorValue = 0x86DEB7;
    [_pieChartView.dataArray addObject: model3];
    
    HXPieModel *model4 = [[HXPieModel alloc] init];
    model4.value = 0.1;
    model4.colorValue = 0x90CEF4;
    [_pieChartView.dataArray addObject: model4];
    NSLog(@"%lf", _pieChartView.height);
    
    [_pieChartView setNeedsDisplay];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
