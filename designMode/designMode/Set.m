//
//  Set.m
//  designMode
//
//  Created by 郝鹏 on 16/1/17.
//  Copyright © 2016年 郝鹏. All rights reserved.
//

#import "Set.h"

@implementation Set
-(void)test{
    NSSet *set = [[NSSet alloc]initWithObjects:@"One", @"Two", @"Three", @"Four", nil];
    NSLog(@"%@", set);
    //搜索比数组更快，基于哈希表
    NSLog(@"%lu", [set count]);
    
    BOOL ret = [set containsObject:@"Two"];
    NSLog(@"%d", ret);
    
    NSSet *set2 = [[NSSet alloc]initWithObjects:@"One", @"Two", @"Three", @"Four", nil];
    ret = [set isEqualToSet:set2];
    NSLog(@"%d", ret);
    
    ret = [set isSubsetOfSet:set2];
    NSLog(@"%d", ret);
    //无序存储，所以判断是否相等于存储顺序无关
    //重复添加的成员不会使集合总个数增加
    
    NSEnumerator *enu =[set objectEnumerator];
    NSString *str;
    while (str = [enu nextObject]) {
        NSLog(@"%@", str);
    }
    
    NSArray *array = [[NSArray alloc] initWithObjects:@"one", @"two", @"three", nil];
    NSSet *set3 = [[NSSet alloc]initWithArray:array];
    NSLog(@"%@", set3);
    
    NSArray *arr2 = [set3 allObjects];
    NSLog(@"arr2:%@", arr2);
    
    //可变的
    NSMutableSet *mSet = [[NSMutableSet alloc] init];
    [mSet addObject:@"one"];
    [mSet addObject:@"Two"];
    [mSet addObject:@"Three"];
    NSLog(@"%@", mSet);
    
    [mSet removeObject:@"Three"];
    NSLog(@"%@", mSet);
    
    [mSet removeAllObjects];
    NSLog(@"%@", mSet);
    
    [mSet unionSet:set];
    NSLog(@"set m:%@", mSet);
    
    [mSet minusSet:set];
    NSLog(@"minus set:%@", mSet);
    
    //索引集合,是NSSet的变种，但是没有继承的关系
    NSIndexSet *index = [[NSIndexSet alloc] initWithIndexesInRange:NSMakeRange(2, 3)];
    //从2开始，3个数字
    NSLog(@"index:%@", index);
    NSArray *inArr = [[NSArray alloc] initWithObjects:@"1",@"2",@"3",@"4",@"5", @"6", nil];
    NSArray *newArr = [inArr objectsAtIndexes:index];
    NSLog(@"inArr:%@, newArr:%@", inArr, newArr);
    
    //可变索引集合
    NSMutableIndexSet *mIndex = [[NSMutableIndexSet alloc] init];
    [mIndex addIndex:0];
    [mIndex addIndex:3];
    [mIndex addIndex:5];
    newArr = [inArr objectsAtIndexes:mIndex];
    NSLog(@"%@", newArr);
    
}
@end
