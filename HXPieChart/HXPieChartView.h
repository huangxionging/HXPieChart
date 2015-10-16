//
//  HXPieChartView.h
//  HXPieChart
//
//  Created by huangxiong on 15/8/29.
//  Copyright (c) 2015年 huangxiong. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HXPieModel.h"
#import "UIView+CoordinateRelationship.h"

#define UIColorFromRGB(rgbValue) [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]


@interface HXPieChartView : UIView

// 数据源
@property (nonatomic, strong) NSMutableArray *dataArray;

// 开始角度
@property (nonatomic, assign) CGFloat startAngle;

// 半径
@property (nonatomic, assign) CGFloat radius;

// 圆心位置
@property (nonatomic, assign) CGPoint circleCenter;

// 线宽
@property (nonatomic, assign) CGFloat lineWidth;

@end
