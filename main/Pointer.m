//
//  Pointer.m
//  main
//
//  Created by A on 2020/7/24.
//  Copyright © 2020 A. All rights reserved.
//

#import "Pointer.h"

@implementation Pointer;

int main()
{
    @autoreleasepool {
        NSDate *date = [NSDate date];
        NSLog(@"%@",date);

        sleep(2);

        date = [NSDate date];
        NSLog(@"%@",date);        
    }
    return 0;
}

@end
