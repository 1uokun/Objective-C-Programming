//
//  Property.h
//  main
//
//  Created by 罗坤 on 2020/7/28.
//  Copyright © 2020 A. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Property : NSObject

@property int age;
@property (nonatomic, readwrite) int height;

- (int) getAge;

@end
