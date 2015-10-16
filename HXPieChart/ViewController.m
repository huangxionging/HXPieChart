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

// 数据
@property (nonatomic, strong) NSMutableArray *pieData;

@property (nonatomic, strong) HXPieChartView *pieChartView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor whiteColor];
    
    [self getPieChartData];
    
    _pieChartView = [[HXPieChartView alloc] initWithFrame: CGRectMake(0, 100, 255, 200)];
    _pieChartView.lineWidth = 55;
    _pieChartView.dataArray = _pieData;
    _pieChartView.startAngle = M_PI_2 * 3;
    _pieChartView.circleCenter = CGPointMake(_pieChartView.width / 2, _pieChartView.height / 2);
    _pieChartView.radius = 95 - 55 / 2;
    [self.view addSubview: _pieChartView];
    

    NSLog(@"%lf", _pieChartView.left);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) getPieChartData {
    
    if (_pieData == nil) {
        _pieData = [[NSMutableArray alloc] initWithCapacity: 4];
    }
    HXPieModel *operateModel = [[HXPieModel alloc] init];
    operateModel.value = 0.6;
    operateModel.colorValue = 0xFC9478;
    operateModel.itemName = @"营业收入";
    [_pieData addObject: operateModel];
    
    
    HXPieModel *userModel = [[HXPieModel alloc] init];
    userModel.value = 0.6 * (1 - operateModel.value);
    userModel.colorValue = 0xF9D586;
    userModel.itemName = @"用户";
    [_pieData addObject: userModel];
    
    HXPieModel *shopModel = [[HXPieModel alloc] init];
    shopModel.value = 0.25 * (1 - operateModel.value);
    shopModel.colorValue = 0x86DEB7;
    shopModel.itemName = @"商户";
    [_pieData addObject: shopModel];
    
    HXPieModel *platModel = [[HXPieModel alloc] init];
    platModel.value = 0.15 * (1 - operateModel.value);
    platModel.colorValue = 0x90CEF4;
    platModel.itemName = @"平台";
    [_pieData addObject: platModel];
}

@end
