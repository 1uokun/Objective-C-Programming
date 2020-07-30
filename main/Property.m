//
//  Property.m
//  main
//
//  Created by 罗坤 on 2020/7/28.
//  Copyright © 2020 A. All rights reserved.
//

#import "Property.h"

@implementation Property;

static NSString *str = nil;
//NSString const *NSLuoKun = @"罗坤";

- (int) getAge
{
    int h = [self height];
    return h * [self age];
}

int main()
{
    @autoreleasepool {
        Property *prop = [[Property alloc] init];
        prop.age = 12;
//        NSLog(@"luokun is %d", LUOKUN);
//        NSLog(@"%d the larger", MAX2(10,12));
        
//        NSLocale *here = [NSLocale currentLocale];
//        NSString *currency = [here objectForKey:NSLocaleCurrencyCode];
//        NSLog(@"Money is %@", NSLuoKun);
        
        NSError *error;
        if(!str){
            str = [[NSString alloc]
            initWithContentsOfFile:@"/etc/resolve.conf"
            encoding:NSASCIIStringEncoding
            error:&error];
        }

        if(!str){
            NSLog(@"read failed: %@", [error localizedDescription]);
            [str enumerateLinesUsingBlock:<#^(NSString * _Nonnull line, BOOL * _Nonnull stop)block#>]
        } else {
            NSLog(@"resolve.conf looks like this: %@", str);
        }
    }
}

@end
