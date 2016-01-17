//
//  NSString+Reverse.m
//  designMode
//
//  Created by 郝鹏 on 16/1/16.
//  Copyright © 2016年 郝鹏. All rights reserved.
//

#import "NSString+Reverse.h"

@implementation NSString (Reverse)

-(NSString *) reverse {
    NSUInteger len = [self length];
    NSMutableString *str = [[NSMutableString alloc] initWithCapacity:len];
    while (len > 0) {
        unichar c = [self characterAtIndex:--len];
        [str appendFormat:@"%C", c];
        NSLog(@"append str:%C, then:%@", c, str);
    }
    NSLog(@"after reverse:%@", str);
    return str;
}

-(void) test {
    [self test2];
}

-(void) test2 {
    NSLog(@"test2");
}

@end
