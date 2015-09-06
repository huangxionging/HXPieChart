//
//  UIView+CoordinateRelationship.m
//  HXPieChart
//
//  Created by huangxiong on 15/8/29.
//  Copyright (c) 2015年 huangxiong. All rights reserved.
//

#import "UIView+CoordinateRelationship.h"

@implementation UIView (CoordinateRelationship)

#pragma mark---设置左边x值
- (void)setLeft:(CGFloat)left {
    CGRect newFrame = self.frame;
    newFrame.origin.x = left;
    self.frame = newFrame;
}

#pragma mark---左边值
- (CGFloat)left {
    return self.frame.origin.x;
}

#pragma mark---设置右边的值
- (void)setRight:(CGFloat)right {
    CGRect newFrame = self.frame;
    newFrame.size.width = right - newFrame.origin.x;
    self.frame = newFrame;
}

#pragma mark---获取右边的值
- (CGFloat)right {
    return self.frame.origin.x + self.frame.size.width;
}

#pragma mark---设置顶部
- (void)setTop:(CGFloat)top {
    CGRect newFrame = self.frame;
    newFrame.origin.y = top;
    self.frame = newFrame;
}

#pragma mark---获取顶部值
- (CGFloat)top {
    return self.frame.origin.y;
}

#pragma mark---设置底部坐标
- (void)setBottom:(CGFloat)bottom {
    CGRect newFrame = self.frame;
    newFrame.size.height =  bottom - newFrame.origin.y;
    self.frame = newFrame;
}

#pragma mark---获取底部坐标
- (CGFloat)bottom {
    return self.frame.origin.y + self.height;
}

#pragma mark---设置宽度值
- (void)setWidth:(CGFloat)width {
    CGRect newFrame = self.frame;
    newFrame.size.width = width;
    self.frame = newFrame;
}

#pragma mark---获取宽度值
- (CGFloat)width {
    return self.frame.size.width;
}

#pragma mark---设置高度值
- (void)setHeight:(CGFloat)height {
    CGRect newFrame = self.frame;
    newFrame.size.height = height;
    self.frame = newFrame;
}

#pragma mark---获取高度值
- (CGFloat)height {
    return self.frame.size.height;
}

#pragma mark---设置中点横坐标
- (void)setCenterX:(CGFloat)centerX {
    CGPoint center = self.center;
    center.x = centerX;
    self.center = center;
}

#pragma mark---获取中点横坐标
- (CGFloat)centerX {
    return self.center.x;
}

#pragma mark---设置中点 y 坐标
- (void)setCenterY:(CGFloat)centerY {
    CGPoint center = self.center;
    center.y = centerY;
    self.center = center;
}

#pragma mark---获取中点纵坐标
- (CGFloat)centerY {
    return self.center.y;
}

#pragma mark---设置左上角坐标
- (void)setLeftTop:(CGPoint)leftTop {
    CGRect rect = self.frame;
    rect.origin = leftTop;
    self.frame = rect;
}

#pragma mark---获取左上角坐标
- (CGPoint)leftTop {
    return self.frame.origin;
}

#pragma mark---设置右上角坐标
- (void)setRightTop:(CGPoint)rightTop {
    CGRect rect = self.frame;
    rect.origin.y = rightTop.y;
    rect.size.width = 
    self.frame = rect;
}

@end
