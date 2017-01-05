//
//  UIViewController+SLHCommon.m
//  ProjectDemo
//
//  Created by 时礼欢 on 2017/1/3.
//  Copyright © 2017年 slh. All rights reserved.
//

#import "UIViewController+SLHCommon.h"

@implementation UIViewController (SLHCommon)

+ (instancetype)slh_initFromStoryBoard {
    UIViewController *vc = [[UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle]] instantiateViewControllerWithIdentifier:NSStringFromClass([self class])];
    if (vc) {
    }
    return vc;
}

+ (instancetype)slh_initFromXib {
    UIViewController *vc = [[UIViewController alloc] initWithNibName:NSStringFromClass([self class]) bundle:[NSBundle mainBundle]];
    if (vc) {
    }
    return vc;
}

@end
