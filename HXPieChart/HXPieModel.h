//
//  HXPieModel.h
//  HXPieChart
//
//  Created by huangxiong on 15/9/7.
//  Copyright (c) 2015年 huangxiong. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HXPieModel : NSObject

/**
 *  值
 */
@property (nonatomic, assign) float value;

/**
 *  颜色值
 */
@property (nonatomic, assign) NSInteger colorValue;

/**
 *  项目名称
 */
@property (nonatomic, copy) NSString *itemName;

/**
 *  角度, Item 饼图块的中线角度值, 依据此可计算边缘坐标
 */
@property (nonatomic, assign) float midAngle;

@end
