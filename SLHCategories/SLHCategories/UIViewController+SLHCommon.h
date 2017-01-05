//
//  UIViewController+SLHCommon.h
//  ProjectDemo
//
//  Created by 时礼欢 on 2017/1/3.
//  Copyright © 2017年 slh. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIViewController (SLHCommon)

/**
 *  从storyboard 中加载初始化, 默认得是 Main.storyboard, storyboard ID要设置为和类名一致
 *
 *  @return <#return value description#>
 */
+ (instancetype)slh_initFromStoryBoard;


/**
 *  从 xib 中加载初始化, identity 设置为和类名相同
 *
 *  @return <#return value description#>
 */
+ (instancetype)slh_initFromXib;

@end
