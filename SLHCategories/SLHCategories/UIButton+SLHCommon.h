//
//  UIButton+SLHCommon.h
//  ProjectDemo
//
//  Created by 时礼欢 on 2017/1/3.
//  Copyright © 2017年 slh. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIButton (SLHCommon)

/**
 *  文字在下，图片在上
 *
 *  @param spacing 文字和图片的间距
 */
- (void)slh_verticalImageAndTitle:(CGFloat)spacing;

/**
 *  文字在左，图片在右
 *
 *  @param spacing 文字和图片的距离
 */
- (void)slh_imageRightAndTitleLeft:(CGFloat)spacing;

@end
