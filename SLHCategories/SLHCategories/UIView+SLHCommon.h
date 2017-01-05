//
//  UIView+SLHCommon.h
//  ProjectDemo
//
//  Created by 时礼欢 on 2017/1/3.
//  Copyright © 2017年 slh. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (SLHCommon)
#pragma mark - frame
/**
 *	@brief	获取左上角横坐标
 *
 *	@return	坐标值
 */
- (CGFloat)slh_left;

/**
 *	@brief	获取左上角纵坐标
 *
 *	@return	坐标值
 */
- (CGFloat)slh_top;

/**
 *	@brief	获取视图右下角横坐标
 *
 *	@return	坐标值
 */
- (CGFloat)slh_right;

/**
 *	@brief	获取视图右下角纵坐标
 *
 *	@return	坐标值
 */
- (CGFloat)slh_bottom;

/**
 *	@brief	获取视图宽度
 *
 *	@return	宽度值（像素）
 */
- (CGFloat)slh_width;

/**
 *	@brief	获取视图高度
 *
 *	@return	高度值（像素）
 */
- (CGFloat)slh_height;

/**
 *	@brief	删除所有子对象
 */
- (void)slh_removeAllSubviews;
#pragma mark - UIView 转为 UIImage
/**
 *	@brief	UIView 转为 UIImage
 *
 *	@return	UIImage
 */
- (UIImage*)slh_returnScreenHot;

/**
 *  加载xib的View
 *
 *  @return 返回view对象
 */
+ (id)slh_loadNib;

/**
 *  添加圆角
 *
 *  @param radius 要设置的弧度
 */
- (void)slh_addLayerCornerRadius:(CGFloat)radius layerBackgroundColor:(UIColor *)color;
- (void)slh_addCornerRadius:(CGFloat)radius;

- (void)slh_setBorderColor: (UIColor *)color borderWidth:(CGFloat)width;

/**
 *  获取当前视图所在的VC
 *
 *  @return <#return value description#>
 */
- (UIViewController *)slh_currentViewController;
@end
