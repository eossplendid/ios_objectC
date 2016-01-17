//
//  Value.m
//  designMode
//
//  Created by 郝鹏 on 16/1/17.
//  Copyright © 2016年 郝鹏. All rights reserved.
//

#import "Value.h"

struct sct {
    int a;
    int b;
}sctt = {4, 5};

@implementation Value
-(void)test{
    //NSNumber，存储基本数据类型，将int，long，double，float等数据存储为对象,之后可以放到集合，数组，字典中
    NSValue *value = [[NSValue alloc] initWithBytes:&sctt objCType:@encode(struct sct)];
    NSLog(@"%s", @encode(int));
    
    if (strcmp(value.objCType, @encode(struct sct))){
        NSLog(@"this is struct sct");
    }
    struct sct newsctt;
    [value getValue:&newsctt];
    NSLog(@"%d, %d", newsctt.a, newsctt.b);
    sctt.a = 2;
    NSLog(@"%d, %d", newsctt.a, newsctt.b);
    
    char *q;
    char *p = (char *) 0x1f;
    NSValue *v2 = [[NSValue alloc] initWithBytes:&p objCType:@encode(char *)];
    [v2 getValue:&q];
    NSLog(@"%p", q);
    
    //oc中常用的数据结构
    CGPoint point;
    CGSize size;
    CGRect rect;
    
    NSValue *pointValue = [NSValue valueWithPoint:point];
    NSValue *sizeValue = [NSValue valueWithSize:size];
    NSValue *rectValue = [NSValue valueWithRect:rect];
    NSValue *rangValue = [NSValue valueWithRange:NSMakeRange(1, 3)];
    
}
@end
