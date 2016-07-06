//
//  UIColor+UtilityTool.m
//  HXPieChart
//
//  Created by huangxiong on 16/7/6.
//  Copyright © 2016年 huangxiong. All rights reserved.
//

#import "UIColor+UtilityTool.h"

@implementation UIColor (UtilityTool)

#pragma mark- 16进制字符串创建
+ (instancetype)colorWithHexString:(NSString *)colorHexString alpha:(CGFloat)alpha {
    
    // 追加 # 号, 如果没有的话
    if (![colorHexString hasPrefix: @"#"]) {
        colorHexString = [NSString stringWithFormat: @"#%@", colorHexString];
    }
    // 判断长度是否合法
    NSInteger length = colorHexString.length;
    NSAssert((length == 7), @"格式错误");
    
    // 获取颜色字符串
    NSString *color = [colorHexString substringWithRange: NSMakeRange(1,  6)];
    
    // 将颜色值字符串转换成10进制数值
    NSScanner *scanner = [NSScanner scannerWithString: color];
    unsigned long long colorLongValue = -1;
    BOOL isSucceed = [scanner scanHexLongLong: &colorLongValue];
    
    if (isSucceed) {
       return [UIColor colorWithHexValue: colorLongValue alpha: alpha];
    } else {
        return nil;
    }
}

+ (instancetype)colorWithHexString:(NSString *)colorHexString {
    return [UIColor colorWithHexString: colorHexString alpha: 1.0];
}

#pragma mark- 16进制整数创建
+ (instancetype)colorWithHexValue:(NSInteger)colorHexValue alpha:(CGFloat)alpha {
    return [UIColor colorWithRed:((float)((colorHexValue & 0xFF0000) >> 16))/255.0 green:((float)((colorHexValue & 0xFF00) >> 8))/255.0 blue:((float)(colorHexValue & 0xFF))/255.0 alpha: alpha];
}

+ (instancetype)colorWithHexValue:(NSInteger)colorHexValue {
    return [UIColor colorWithHexValue: colorHexValue alpha: 1.0];
}

@end
