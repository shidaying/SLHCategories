//
//  UIView+SLHCommon.m
//  ProjectDemo
//
//  Created by 时礼欢 on 2017/1/3.
//  Copyright © 2017年 slh. All rights reserved.
//

#import "UIView+SLHCommon.h"

@implementation UIView (SLHCommon)

#pragma mark - Life cycle
+ (id)slh_loadNib {
    id instance = [[[NSBundle mainBundle] loadNibNamed:NSStringFromClass(self) owner:self options:nil] firstObject];
    return instance;
}

#pragma mark - Accessors

- (CGFloat)slh_left
{
    return self.frame.origin.x;
}

- (CGFloat)slh_top
{
    return self.frame.origin.y;
}
- (CGFloat)slh_width
{
    return self.frame.size.width;
}

- (CGFloat)slh_height
{
    return self.frame.size.height;
}
- (CGFloat)slh_right
{
    return self.frame.origin.x + self.frame.size.width;
}

- (CGFloat)slh_bottom
{
    return self.frame.origin.y + self.frame.size.height;
}

- (void)slh_removeAllSubviews
{
    while (self.subviews.count)
    {
        UIView *child = self.subviews.lastObject;
        [child removeFromSuperview];
    }
}
#pragma mark - UIView 转为 UIImage
/**
 *	@brief	UIView 转为 UIImage
 *
 *	@return	UIImage
 */
- (UIImage*)slh_returnScreenHot
{
    //    UIGraphicsBeginImageContext(self.bounds.size);//转化生成的图片会失真, 下面的不会
    
    // 下面方法，第一个参数表示区域大小。第二个参数表示是否是非透明的。如果需要显示半透明效果，需要传NO，否则传YES。第三个参数就是屏幕密度了
    UIGraphicsBeginImageContextWithOptions(self.bounds.size, self.opaque, [UIScreen mainScreen].scale);
    [self.layer renderInContext:UIGraphicsGetCurrentContext()];
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return image;
}


- (void)slh_addLayerCornerRadius:(CGFloat)radius layerBackgroundColor:(UIColor *)color {
    self.backgroundColor = [UIColor clearColor];
    self.layer.backgroundColor = color.CGColor;
    self.layer.cornerRadius = radius;
    self.layer.masksToBounds = NO;
    self.layer.shouldRasterize = YES;
    self.layer.rasterizationScale = [[UIScreen mainScreen] scale];
}


- (void)slh_addCornerRadius:(CGFloat)radius {
    UIBezierPath *maskPath = [UIBezierPath bezierPathWithRoundedRect:self.bounds byRoundingCorners:UIRectCornerAllCorners cornerRadii:CGSizeMake(radius, radius)];
    CAShapeLayer *maskLayer = [[CAShapeLayer alloc] init];
    maskLayer.frame = self.bounds;
    maskLayer.path = maskPath.CGPath;
    self.layer.mask = maskLayer;
}

- (void)slh_setBorderColor: (UIColor *)color borderWidth:(CGFloat)width {
    self.layer.borderColor = color.CGColor;
    self.layer.borderWidth = width;
}

/** 获取当前View的控制器对象 */
- (UIViewController *)slh_currentViewController {
    UIResponder *next = [self nextResponder];
    do {
        if ([next isKindOfClass:[UIViewController class]]) {
            return (UIViewController *)next;
        }
        next = [next nextResponder];
    } while (next != nil);
    return nil;
}

@end
