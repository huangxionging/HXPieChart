//
//  HXPieChartView.m
//  HXPieChart
//
//  Created by huangxiong on 15/8/29.
//  Copyright (c) 2015年 huangxiong. All rights reserved.
//

#import "HXPieChartView.h"

@interface HXPieChartView ()

@end

@implementation HXPieChartView


- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    
    if (self) {
        _dataArray = [[NSMutableArray alloc] init];
        self.backgroundColor = [UIColor clearColor];
    }
    return self;
}

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    
    CGContextRef ctx = UIGraphicsGetCurrentContext();

    CGContextSetLineWidth(ctx, _lineWidth);
    
    CGFloat angle = _startAngle;

    for (NSInteger index = 0; index < _dataArray.count; ++index) {
        
        HXPieModel *model = _dataArray[index];
        

        // 设置线颜色
        CGContextSetStrokeColorWithColor(ctx, UIColorFromRGB(model.colorValue).CGColor);
        
        // 绘制圆弧
        CGContextAddArc(ctx, _circleCenter.x, self.height - _circleCenter.y, _radius, angle, angle + M_PI * 2 * model.value, NO);
        
        // 绘图
        CGContextDrawPath(ctx, kCGPathStroke);
        
        // 中点坐标
        model.midAngle = angle + M_PI * 2 * model.value / 2;
        
        // 新的角度

        angle += M_PI * 2 * model.value;
        
    }
}

#pragma 重绘饼图
- (void)drawPieChat {
    [self setNeedsDisplay];
}

@end
