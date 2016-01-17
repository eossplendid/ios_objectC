//
//  Number.m
//  designMode
//
//  Created by 郝鹏 on 16/1/17.
//  Copyright © 2016年 郝鹏. All rights reserved.
//

#import "Number.h"

@implementation Number
-(void) test {
    NSNumber *intNum = [[NSNumber alloc]initWithInt:5];
    NSNumber *floatNum = [[NSNumber alloc]initWithFloat:5.0f];
    NSNumber *doubleNum = [[NSNumber alloc]initWithDouble:5.0];
    NSNumber *charNum = [[NSNumber alloc]initWithChar:'A'];
    //NSNumber是个类簇，NSNumber不是一个类，而是一群类
    //UI中的UIButton也是一个类簇
    
    NSNumber *int2 = [NSNumber numberWithInt:6];
    BOOL ret = [intNum isEqualToNumber:int2];
    NSLog(@"%d", ret);
    ret = [intNum isEqualToNumber:floatNum];
    NSLog(@"%d", ret);
    
    if([intNum compare:charNum] == NSOrderedAscending){
        NSLog(@"<");
    } else if([intNum compare:charNum] == NSOrderedSame){
        NSLog(@"=");
    }else{
        NSLog(@">");
    }
    
    NSLog(@"%d", [intNum intValue]);
    NSLog(@"%f", [floatNum floatValue]);
    NSLog(@"%f", [doubleNum doubleValue]);
    NSLog(@"%c", [charNum charValue]);
    
}
@end
