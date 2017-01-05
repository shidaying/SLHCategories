//
//  UIImage+SLHCommon.m
//  ProjectDemo
//
//  Created by 时礼欢 on 2017/1/3.
//  Copyright © 2017年 slh. All rights reserved.
//

#import "UIImage+SLHCommon.h"

@implementation UIImage (SLHCommon)

+ (UIImage *)slh_imageWithColor: (UIColor *)color {
    CGRect r= CGRectMake(0.0f, 0.0f, 1.0f, 44);
    UIGraphicsBeginImageContext(r.size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    CGContextSetFillColorWithColor(context, [color CGColor]);
    CGContextFillRect(context, r);
    
    UIImage *img = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return img;
}

@end
