//
//  UIColor+UtilityTool.h
//  HXPieChart
//
//  Created by huangxiong on 16/7/6.
//  Copyright © 2016年 huangxiong. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (UtilityTool)

/**
 *  @author huangxiong, 2016/07/06 14:50:42
 *
 *  @brief 通过16进制整数创建
 *
 *  @param colorHexValue 16进制整数
 *  @param alpha         灰度值
 *
 *  @return 颜色对象
 *
 *  @since 1.0
 */
+ (instancetype) colorWithHexValue: (NSInteger)colorHexValue alpha:(CGFloat)alpha;

/**
 *  @author huangxiong, 2016/07/06 14:55:09
 *
 *  @brief 通过16进制整数创建灰度值为 1.0的颜色
 *
 *  @param colorHexValue 16进制颜色值整数
 *
 *  @return 颜色对象
 *
 *  @since 1.0
 */
+ (instancetype) colorWithHexValue: (NSInteger)colorHexValue;

/**
 *  @author huangxiong, 2016/07/06 10:11:10
 *
 *  @brief 通过常用的 16 进制颜色创建
 *
 *  @param colorHexString 16进制颜色字符串, 举例 @"#fafa9b" 或者 @"fafa9b", 不支持其它长度的格式
 *  @param alpha    灰度值
 *
 *  @return 颜色对象
 *
 *  @since 1.0
 */
+ (instancetype)colorWithHexString: (NSString *)colorHexString alpha:(CGFloat)alpha;

/**
 *  @author huangxiong, 2016/07/06 11:31:25
 *
 *  @brief 通过常用的 16 进制颜色创建 alpha 为 1.0
 *
 *  @param colorHexString 16进制字符串
 *
 *  @return 颜色对象
 *
 *  @since 1.0
 */
+ (instancetype)colorWithHexString: (NSString *)colorHexString;

@end
