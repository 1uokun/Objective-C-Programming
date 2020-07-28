//
//  Header.m
//  main
//
//  Created by 罗坤 on 2020/7/27.
//  Copyright © 2020 A. All rights reserved.
//

#import <Foundation/Foundation.h>

int main()
{
    @autoreleasepool {
        
        NSString *name = @"Niko";
        NSArray *arr = @[@1, @2, name];
        NSLog(@"%@", arr);
        
    }
    return 0;
}
