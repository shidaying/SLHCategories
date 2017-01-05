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

- (NSString *)slh_dateStrFromDateStr: (NSString *)dateStr {
    @try {
        //实例化一个NSDateFormatter对象
        NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
        [dateFormatter setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
        [dateFormatter setLocale:[NSLocale currentLocale]];
        [dateFormatter setTimeZone:[NSTimeZone defaultTimeZone]];
        
        NSDate * nowDate = [NSDate date];
        NSDate * needFormatDate = [dateFormatter dateFromString:dateStr];
        NSTimeInterval time = [nowDate timeIntervalSinceDate:needFormatDate];
        
        //// 再然后，把间隔的秒数折算成天数和小时数：
        
        NSString *dateStr = @"";
        
        //        if (time <= 60) {  //// 1分钟以内的
        //            dateStr = @"刚刚";
        //        }else if(time <= 60*60){  ////  一个小时以内的
        //
        //            int mins = time/60;
        //            dateStr = [NSString stringWithFormat:@"%d分钟前",mins];
        //
        //        } else
        if (time <= 60*60*24){   //// 在两天内的
            
            [dateFormatter setDateFormat:@"YYYY/MM/dd"];
            NSString * need_yMd = [dateFormatter stringFromDate:needFormatDate];
            NSString *now_yMd = [dateFormatter stringFromDate:nowDate];
            
            [dateFormatter setDateFormat:@"HH:mm"];
            if ([need_yMd isEqualToString:now_yMd]) {
                return [dateFormatter stringFromDate:needFormatDate];
            }else {
                dateStr = @"昨天";
            }
        } else {
            
            [dateFormatter setDateFormat:@"yyyy"];
            NSString * yearStr = [dateFormatter stringFromDate:needFormatDate];
            NSString *nowYear = [dateFormatter stringFromDate:nowDate];
            
            if ([yearStr isEqualToString:nowYear]) {
                //  在同一年，
                
                
                [dateFormatter setDateFormat:@"MM-dd"];
                dateStr = [dateFormatter stringFromDate:needFormatDate];
                NSArray *dateArray = [dateStr componentsSeparatedByString:@"-"];
                dateStr = [NSString stringWithFormat:@"%ld%@%ld%@", [dateArray.firstObject integerValue], @"月", [dateArray.lastObject integerValue], @"日"];
                return dateStr;
            } else{
                /// 不在同一年
                [dateFormatter setDateFormat:@"yyyy/MM/dd"];
                dateStr = [dateFormatter stringFromDate:needFormatDate];
            }
        }
        
        return dateStr;
    }
    @catch (NSException *exception) {
        return @"";
    }
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
