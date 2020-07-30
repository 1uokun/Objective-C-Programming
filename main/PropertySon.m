//
//  PropertySon.m
//  main
//
//  Created by 罗坤 on 2020/7/29.
//  Copyright © 2020 A. All rights reserved.
//

#import "PropertySon.h"

@implementation PropertySon;


- (int) getAge
{
    int h = [self height];
    return h * [self age];
}

int main()
{
    @autoreleasepool {
        PropertySon *son = [[PropertySon alloc] init];
        son.age = 25l;
        
        NSLog(@"get age: %d", [son getAge]);
    }
}

@end
