//
//  HXPieChartView.m
//  HXPieChart
//
//  Created by huangxiong on 15/8/29.
//  Copyright (c) 2015年 huangxiong. All rights reserved.
//

#import "HXPieChartView.h"

@implementation HXPieChartView


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    CGMutablePathRef path = CGPathCreateMutable();
    
    CGAffineTransform transform = CGAffineTransformMakeTranslation(50, 50);
    for (NSInteger index = 0; index < 1; ++index) {
        
        HXPieModel *model = _dataArray[index];

        
        
    }
//    CGPathAddArc(path, &transform, 160, 180, 30,  0, 1.5 * M_PI, 1);
//    CGContextDrawPath
    CGContextSetFillColorWithColor(ctx, [UIColor redColor].CGColor);
    CGPathCloseSubpath(path);
    CGContextAddPath(ctx, path);
    CGContextFillPath(ctx);
    CGContextDrawPath(ctx, kCGPathFillStroke);
    
//    UIColor * aColor = [UIColor colorWithRed:0 green:1 blue:1 alpha:1];
//    CGContextSetFillColorWithColor(ctx, aColor.CGColor);//填充颜色
//    //以10为半径围绕圆心画指定角度扇形
//    CGContextMoveToPoint(ctx, 160, 180);
//    CGContextAddArc(ctx, 160, 180, 30,  -60 * M_PI / 180, -120 * M_PI / 180, 1);
//    CGContextClosePath(ctx);
//    CGContextDrawPath(ctx, kCGPathFillStroke); //绘制路径
    
//    CGAffineTransform transform = CGAffineTransformMakeTranslation(50, 50);
    
    //创建CGMutablePathRef
    
//    CGMutablePathRef path = CGPathCreateMutable();
    
    CGPathAddArc(path, &transform, 50, 50, 50, 0, 1.5 * M_PI, NO);
    
    CGPathMoveToPoint(path, &transform, 50, 0);
//
    CGPathAddLineToPoint(path, &transform, 50, 50);
//
    CGPathAddLineToPoint(path, &transform, 100, 50);
    
    
    
    //将CGMutablePathRef添加到当前Context内
    
    CGContextAddPath(ctx, path);
    
    [[UIColor grayColor] setFill];
    
    [[UIColor blueColor] setStroke];
    
    CGContextSetLineWidth(ctx, 2);
    
    //执行绘画
    
    CGContextDrawPath(ctx, kCGPathFillStroke);
    
}


@end
