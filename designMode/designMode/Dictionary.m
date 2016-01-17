//
//  Dictionary.m
//  designMode
//
//  Created by 郝鹏 on 16/1/17.
//  Copyright © 2016年 郝鹏. All rights reserved.
//

#import "Dictionary.h"

@implementation Dictionary
-(void)test{
    @autoreleasepool {
        NSDictionary *dict = [[NSDictionary alloc] initWithObjectsAndKeys:
                              @"One", @"1", @"Two",@"2",@"Three",@"3", nil];
        //字典中的元素是以键值对的形式存储的
        //@One & @1组成一个键值对
        //存储没有顺序
        //键值对的健和值，都是任意的对象，往往键值使用字符串
        NSLog(@"%@", dict);
        
        NSEnumerator * enumerator = [dict keyEnumerator];
        id obj;
        while (obj = [enumerator nextObject]) {
            NSLog(@"%@", obj);
        }
        
        for (id obj in dict){
            NSLog(@"%@", obj);
            NSLog(@"%@", [dict objectForKey:obj]);
        }
        
        NSString *str = [dict objectForKey:@"1"];
        NSLog(@"%@", str); //定义一个string，直接获取到键值对应的内容
        
        //可变字典
        NSMutableDictionary *mDict = [[NSMutableDictionary alloc] init];
        [mDict setObject:@"content 1" forKey:@"k1"];
        [mDict setObject:@"content 2" forKey:@"k2"];
        NSLog(@"%@", mDict);
        
        [mDict removeObjectForKey:@"k1"];
        NSLog(@"%@", mDict);
        
    }

    
    
}
@end
