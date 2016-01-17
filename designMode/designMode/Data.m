//
//  Data.m
//  designMode
//
//  Created by 郝鹏 on 16/1/17.
//  Copyright © 2016年 郝鹏. All rights reserved.
//

#import "Data.h"

@implementation Data
-(void)test {
    //发送数据前要将数据内容转换成字符流，类似C语言的缓冲区 char buf［］
    NSString *str = @"hello world";
    NSData *data = [str dataUsingEncoding:NSUTF8StringEncoding];
    NSLog(@"%s", data.bytes);
    
    NSString *str2 = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
    NSLog(@"%@", str2);
    
}
@end
