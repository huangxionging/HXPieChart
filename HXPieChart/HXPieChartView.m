//
//  HXPieChartView.m
//  HXPieChart
//
//  Created by huangxiong on 15/8/29.
//  Copyright (c) 2015年 huangxiong. All rights reserved.
//

#import "HXPieChartView.h"

@implementation HXPieChartView


- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    
    if (self) {
        _dataArray = [[NSMutableArray alloc] init];
<<<<<<< HEAD
        self.backgroundColor = [UIColor clearColor];
=======
        UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(self.width / 2 - 50, self.height / 2 - 6, 100, 12)];
        label.text = @"折扣数据";
        label.adjustsFontSizeToFitWidth = YES;
        
        [self addSubview: label];
>>>>>>> origin/master
    }
    
    return self;
}

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    
    CGContextRef ctx = UIGraphicsGetCurrentContext();
<<<<<<< HEAD
    CGContextSetLineWidth(ctx, _lineWidth);
    
    CGFloat angle = _startAngle;
=======
    CGContextSetLineWidth(ctx, 55);
    
    CGFloat angle = 1;
>>>>>>> origin/master
    for (NSInteger index = 0; index < _dataArray.count; ++index) {
        
        HXPieModel *model = _dataArray[index];
        
<<<<<<< HEAD
        // 设置线宽
        CGContextSetStrokeColorWithColor(ctx, UIColorFromRGB(model.colorValue).CGColor);
        
        // 绘制圆弧
        CGContextAddArc(ctx, _circleCenter.x, self.height - _circleCenter.y, _radius, angle, angle + M_PI * 2 * model.value, NO);
        
        // 绘图
        CGContextDrawPath(ctx, kCGPathStroke);
        
        // 中点坐标
        model.midAngle = angle + M_PI * 2 * model.value / 2;
        
        // 新的角度
=======
        CGContextSetStrokeColorWithColor(ctx, UIColorFromRGB(model.colorValue).CGColor);
        
        CGContextAddArc(ctx, self.centerX, self.bottom - self.centerY, 90, angle, angle + M_PI * 2 * model.value, NO);
        
        CGContextDrawPath(ctx, kCGPathStroke);
>>>>>>> origin/master
        angle += M_PI * 2 * model.value;
        
    }
}

<<<<<<< HEAD
=======
//- (CGFloat) getAngleWith: (CGFloat) value {
//    return ;
//}

>>>>>>> origin/master

@end
