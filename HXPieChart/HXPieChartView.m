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
    CGContextSetLineWidth(ctx, 50);
    
    for (NSInteger index = 0; index < 1; ++index) {
        
        HXPieModel *model = _dataArray[index];
        

        
        
    }
}

- (CGFloat) getAngleWith: (CGFloat) value {
    return M_PI * 2 * value / 100;
}


@end
