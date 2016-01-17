//
//  ArrayTest.m
//  designMode
//
//  Created by 郝鹏 on 16/1/16.
//  Copyright © 2016年 郝鹏. All rights reserved.
//

#import "ArrayTest.h"
#import "Dog.h"

@implementation ArrayTest
-(void) test {
    Dog *dog = [[Dog alloc] init];
    NSArray *array = [[NSArray alloc] initWithObjects:@"one",@"two",@"three",dog, nil];
    //数组多元素可以是任意对象
    //数组中存放的是对象的地址
    //更相当于C中的一个链表
    NSLog(@"%@", array);   //直接丢进去，就相当于遍历
    
    //枚举器法遍历
    NSEnumerator *enumerator = [array objectEnumerator];
    id obj;
    while (obj = [enumerator nextObject]) {
        NSLog(@"%@",obj);
    }
    
    //快速枚举法
    for (id obj in array){
        NSLog(@"%@", obj);
    }
    
    //使用i值遍历
    NSUInteger length = [array count];
    obj = [array objectAtIndex:2];
    NSUInteger i;
    for(i = 0; i < length; i++) {
        NSLog(@"%@", [array objectAtIndex:i]);
    }
    //以上为不可变数组的遍历
    //以下是可变数组,是数组的子类
    NSMutableArray *mArray = [[NSMutableArray alloc] init];
    [mArray addObject:@"one"];
    [mArray addObject:@"two"];
    [mArray addObject:@"three"];
    NSLog(@"%@", mArray);
    
//    [mArray removeObject:@"one"];
//    [mArray removeObjectAtIndex:1];
    [mArray exchangeObjectAtIndex:0 withObjectAtIndex:2]; //交换位置
    NSLog(@"%@", mArray);
    //在枚举法的过程中不能去增删元素个数
    enumerator = [mArray objectEnumerator];
//    NSString *str;
//    while (str = [enumerator nextObject]) {
//        [mArray removeLastObject];
//    }
    //删除以后就会崩溃,但是如果是逆序迭代遍历，就没有任何问题
    enumerator = [mArray reverseObjectEnumerator];
    NSString *str;
    while (str = [enumerator nextObject]) {
        [mArray removeLastObject];
        NSLog(@"%@", mArray);
    }
    NSLog(@"%@", mArray);
    
    //结合string
    NSString *tString = @"I am a so bad man";
    NSArray *tArray = [tString componentsSeparatedByString:@" "];
    NSLog(@"%@", tArray);
    NSMutableArray *mutableArray = [[NSMutableArray alloc]init];
    enumerator = [tArray reverseObjectEnumerator];
    NSString *reverseStr;
    while (reverseStr = [enumerator nextObject]) {
        [mutableArray addObject:reverseStr];
    }
    NSLog(@"%@", mutableArray);
    NSString *newStr = [mutableArray componentsJoinedByString:@" "];
    NSLog(@"%@", newStr);
}
@end
