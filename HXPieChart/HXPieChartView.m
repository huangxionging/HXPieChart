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
        UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(self.width / 2 - 50, self.height / 2 - 6, 100, 12)];
        label.text = @"折扣数据";
        label.adjustsFontSizeToFitWidth = YES;
        
        [self addSubview: label];
    }
    
    return self;
}

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    CGContextSetLineWidth(ctx, 55);
    
    CGFloat angle = 1;
    for (NSInteger index = 0; index < _dataArray.count; ++index) {
        
        HXPieModel *model = _dataArray[index];
        
        CGContextSetStrokeColorWithColor(ctx, UIColorFromRGB(model.colorValue).CGColor);
        
        CGContextAddArc(ctx, self.centerX, self.bottom - self.centerY, 90, angle, angle + M_PI * 2 * model.value, NO);
        
        CGContextDrawPath(ctx, kCGPathStroke);
        angle += M_PI * 2 * model.value;
        
    }
}

//- (CGFloat) getAngleWith: (CGFloat) value {
//    return ;
//}


@end
