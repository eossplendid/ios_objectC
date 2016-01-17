//
//  main.m
//  designMode
//
//  Created by 郝鹏 on 16/1/1.
//  Copyright © 2016年 郝鹏. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSString+Reverse.h"
#import "StringTest.h"
#import "ArrayTest.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSString *str = @"abcdefg";
        str = [str reverse];
        NSLog(@"%@", str);
        
//        StringTest *test = [[StringTest alloc] init];
//        [test test];
        
        ArrayTest *aTest = [[ArrayTest alloc]init];
        [aTest test];
    }
       return 0;
}
