//
//  FirstClass.m
//  main
//
//  Created by 罗坤 on 2020/7/27.
//  Copyright © 2020 A. All rights reserved.
//

#import "FirstClass.h"

@implementation FirstClass;

- (int) age
{
    return _age;
}

- (int) getAge
{
    return [self age];
}

- (void) setAge:(int)age
{
    _age = age;
}



int main(){
    @autoreleasepool {
        FirstClass *class = [[FirstClass alloc] init];
        [class setAge:25];
        NSLog(@"get age: %d", [class getAge]);
    }
    return 1;
}

@end
