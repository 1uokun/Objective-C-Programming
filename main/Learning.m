//
//  Learning.m
//  main
//
//  Created by A on 2020/7/24.
//  Copyright © 2020 A. All rights reserved.
//

#import "Learning.h"

@implementation Learning;

int main()
{
    @autoreleasepool {
        // 消息发送
        // NSDate：  类
        // date：    类方法
        NSDate *now = [NSDate date];
        
        NSLog(@"%@", now);
        
        // 详解消息
        // now:     变量
        // timeIntervalSince1970:   实例方法
        int seconds = [now timeIntervalSince1970];
        int secondNesting = [[NSDate date] timeIntervalSince1970];
        
        //              |           |
        //             接收方      选择器（实例方法）
        NSLog(@"It has been %i seconds since the start of 1970.", seconds);
        
        NSDate *later = [now dateByAddingTimeInterval:100000];
        NSLog(@"later %@",later);
        
        // 多个实参
        NSCalendar *cal = [NSCalendar currentCalendar];
        unsigned long day =  [cal ordinalityOfUnit:NSCalendarUnitWeekOfYear inUnit:NSCalendarUnitWeekOfYear forDate:now];
        NSLog(@"多个实参 %lu", day);
        
        // alloc和init
        NSDate *now2 = [[NSDate alloc] init];
        NSLog(@"罗坤 %@", now2);
        
        id asd; // http://sf.gg
        asd = [NSDate date];
        NSLog(@"罗坤 %@", asd);
        
    }
    return 0;
}

@end
