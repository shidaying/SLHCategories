//
//  UIColor+SLHCommon.h
//  ProjectDemo
//
//  Created by 时礼欢 on 2017/1/3.
//  Copyright © 2017年 slh. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NSString (SLHCommon)


/**
 *  去掉首尾空格
 *
 *  @return <#return value description#>
 */
- (NSString *)slh_stringByTrimingWhitespace;



/**
 *  根据一定宽度和字体计算高度
 *
 *  @param maxWidth 最大宽度
 *  @param font  字体
 *
 *  @return 返回计算好高度的size
 */
- (CGSize)slh_stringHeightWithMaxWidth:(CGFloat)maxWidth andFont:(UIFont*)font ;


/**
 *  根据一定高度和字体计算宽度
 *
 *  @param maxHeight 最大高度
 *  @param font      字体
 *
 *  @return 返回计算宽度的size
 */
- (CGSize)slh_stringWidthWithMaxHeight:(CGFloat)maxHeight andFont:(UIFont*)font;


- (NSString *)slh_dateStrFromDateStr: (NSString *)dateStr;

/**
 *  判断是不是以 http:// 开头，如果是返回本身，不是则加上http://
 *
 *  @return <#return value description#>
 */
- (NSString *)slh_toHttpStr;

- (CGSize)slh_stringAttributeHeightWithMaxWidth:(CGFloat)maxWidth attributeDic: (NSDictionary *)attributeDic;

- (CGSize)slh_stringAttributeWidthWithMaxHeight:(CGFloat)maxHeight attributeDic: (NSDictionary *)attributeDic;

/**
 *  判断是不是邮箱
 *
 *  @param email <#email description#>
 *
 *  @return <#return value description#>
 */
- (BOOL)slh_validateEmail:(NSString *)email;


/**
 判断是不是nil, null

 @return <#return value description#>
 */
- (BOOL)slh_isEmpty;



@end
