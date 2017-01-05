//
//  UIColor+SLHCommon.h
//  ProjectDemo
//
//  Created by 时礼欢 on 2017/1/3.
//  Copyright © 2017年 slh. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (SLHCommon)

/**
 *  16进制数转化为颜色， hexValue支持数据:0x1234
 *
 *  @param hexValue   16进制数据
 *  @param alphaValue 设置颜色alpha
 *
 *  @return UIColor 对象
 */
+ (UIColor*)slh_colorWithHexValue:(NSInteger)hexValue alpha:(CGFloat)alphaValue;

/**
 *  16进制数转为对应的颜色，默认的alpha 值为1, hexValue支持数据:0x1234
 *
 *  @param hexValue 16进制数
 *
 *  @return UIColor 对象
 */
+ (UIColor*)slh_colorWithHexValue:(NSInteger)hexValue;

/**
 *  从十六进制字符串获取颜色，hexStr:支持@“#123456”、 @“0X123456”、 @“123456”三种格式
 *
 *  @param hexStr 16进制数据
 *  @param alpha 颜色alpha
 *
 *  @return UIColor对象
 */
+ (UIColor *)slh_colorWithHexString:(NSString *)hexStr alpha:(CGFloat)alpha;

/**
 *  十六进制数据字符串转化为颜色，alpha默认为1， hexStr支持：@“#123456”、 @“0X123456”、 @“123456”三种格式
 *
 *  @param hexStr 十六进制数据颜色字符串
 *
 *  @return  UIColor 对象
 */
+ (UIColor *)slh_colorWithHexString:(NSString *)hexStr;



/**
 *  根据颜色获取16进制数值
 *
 *  @param color 颜色对象
 *
 *  @return 根据颜色转化的16进制数据
 */
+ (NSString *)slh_stringFromColor: (UIColor*)color;


/**
 *  根据RGB的整数值直接转化为颜色对象，对UIColor原有写法的简写
 *
 *  @param red   RGB 对应的 red 的值整数值
 *  @param green RGB 对应的 green 的值整数值
 *  @param blue  RGB 对应的 red 的值整数值
 *  @param alpha color的alpha值
 *
 *  @return UIColor对象
 */

+ (UIColor *)slh_colorWithIntegrRed:(NSInteger)red green:(NSInteger)green blue:(NSInteger)blue alpha:(CGFloat)alpha;

/**
 *  根据RGB的整数值直接转化为颜色对象，默认alpha = 1
 *
 *  @param red   RGB 对应的 red 的值整数值
 *  @param green RGB 对应的 green 的值整数值
 *  @param blue  RGB 对应的 red 的值整数值
 *
 *  @return UIColor对象
 */
+ (UIColor *)slh_colorWithIntegrRed:(NSInteger)red green:(NSInteger)green blue:(NSInteger)blue;



@end
