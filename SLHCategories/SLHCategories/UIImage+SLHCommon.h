//
//  UIImage+SLHCommon.h
//  ProjectDemo
//
//  Created by 时礼欢 on 2017/1/3.
//  Copyright © 2017年 slh. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (SLHCommon)

/**
 *  根据 颜色生成 图片对象
 *
 *  @param color 图片的背景色
 *
 *  @return 图片
 */
+ (UIImage *)slh_imageWithColor: (UIColor *)color;

@end
