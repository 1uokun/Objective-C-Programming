//
//  FirstClass.h
//  main
//
//  Created by 罗坤 on 2020/7/27.
//  Copyright © 2020 A. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FirstClass : NSObject
{
    int _age;
}

- (int) age;
- (int) getAge;
- (void) setAge: (int)age;


@end
