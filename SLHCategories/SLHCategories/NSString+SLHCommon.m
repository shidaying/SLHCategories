//
//  UIViewController+SLHCommon.m
//  ProjectDemo
//
//  Created by 时礼欢 on 2017/1/3.
//  Copyright © 2017年 slh. All rights reserved.
//

#import "NSString+SLHCommon.h"

@implementation NSString (SLHCommon)


- (NSString *)slh_stringByTrimingWhitespace {
    return [self stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
}

- (CGSize)slh_stringHeightWithMaxWidth:(CGFloat)maxWidth andFont:(UIFont*)font  {
    
    return  [self boundingRectWithSize:CGSizeMake(maxWidth, MAXFLOAT) options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName:font} context:nil].size;
}

- (CGSize)slh_stringWidthWithMaxHeight:(CGFloat)maxHeight andFont:(UIFont*)font {
    
    return [self boundingRectWithSize:CGSizeMake(MAXFLOAT, maxHeight) options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName:font} context:nil].size;
}



- (NSString *)slh_toHttpStr {
    if ([self hasPrefix:@"http:"]) {
        return self;
    } else {
        return [NSString stringWithFormat:@"%@%@", @"http://", self];
    }
}

- (CGSize)slh_stringAttributeHeightWithMaxWidth:(CGFloat)maxWidth attributeDic: (NSDictionary *)attributeDic {
    
    CGSize size = [self boundingRectWithSize:CGSizeMake(maxWidth, MAXFLOAT) options:NSStringDrawingUsesLineFragmentOrigin attributes:attributeDic context:nil].size;
    return size;
}



- (CGSize)slh_stringAttributeWidthWithMaxHeight:(CGFloat)maxHeight attributeDic: (NSDictionary *)attributeDic {
    CGSize size = [self boundingRectWithSize:CGSizeMake(MAXFLOAT, maxHeight) options:NSStringDrawingUsesLineFragmentOrigin attributes:attributeDic context:nil].size;
    return size;
    
}

//邮箱
- (BOOL)slh_validateEmail:(NSString *)email
{
    NSString *emailRegex = @"[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}";
    NSPredicate *emailTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", emailRegex];
    return [emailTest evaluateWithObject:email];
}

- (BOOL)slh_isEmpty {
    if (self == nil || [self isKindOfClass:[NSNull class]]) {
        return YES;
    }
    return NO;
}

@end
