//
//  UICollectionViewCell+SLHCommon.h
//  ProjectDemo
//
//  Created by 时礼欢 on 2017/1/3.
//  Copyright © 2017年 slh. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UICollectionViewCell (SLHCommon)

/**
 *  给单元格填充内容
 *
 *  @param modelItem 模型对象，数组元素
 */

- (void)slh_setContentWithModelItem:(id)modelItem;



/**
 *  带单元格
 *
 *  @param modelItem <#modelItem description#>
 *  @param indexPath <#indexPath description#>
 */
- (void)slh_setContentWithModelItem:(id)modelItem indexPath: (NSIndexPath *)indexPath;

@end
