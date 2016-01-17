//
//  StringTest.m
//  designMode
//
//  Created by 郝鹏 on 16/1/16.
//  Copyright © 2016年 郝鹏. All rights reserved.
//

#import "StringTest.h"

@implementation StringTest
-(void) test {
    //NSString学习
    NSString *obstr = @"hello world";
    NSString *str2 = [[NSString alloc] initWithString:obstr];
    NSString *str3 = [[NSString alloc] initWithUTF8String:"C String format"];
    NSString *str4 =[[NSString alloc] initWithFormat:@"hello %d",4];
    
    NSLog(@"%@", str2);
    NSLog(@"%@", str3);
    NSLog(@"%@", str4);
    
    NSString *str5 = [NSString stringWithFormat:@"hello"];
    NSString *str6 = [NSString stringWithUTF8String:"sssss"];
    NSString *str7 = [NSString stringWithString:str5];
    
    //以上的字符串一经赋值就不能被改变，都是常量字符串，567属于临时字符串，不知道内存会在什么时候释放
    
    //字符串相关操作
    //比较是否一样
    BOOL ret = [str7 isEqualToString:str6];
    NSLog(@"%d", ret);
    //比较大小
    NSComparisonResult ret2 = [str7 compare:str6];
    NSLog(@"compare result:%ld", (long)ret2);
    //查找子串
    NSString *oriStr = @"I am a bad man";
    NSString *subStr = @"bad";
    
    NSRange range = [oriStr rangeOfString:subStr];
    NSLog(@"location:%lu length:%lu", range.location, range.length);
    
    NSString *nStr = [oriStr substringToIndex:7];
    //从oriStr的头至第7个，不包括第7个
    NSLog(@"%@",nStr);
    nStr = [oriStr substringFromIndex:7];
    //从第7个，包括第7个，至结尾
    NSLog(@"%@", nStr);
    nStr = [oriStr substringWithRange:NSMakeRange(2, 5)];
    
    //可变字符串等使用
    NSMutableString *mStr1 =[[NSMutableString alloc] init];
    [mStr1 setString:@"hello"];
    NSLog(@"%@", mStr1);
    
    [mStr1 setString:@"world"];
    NSLog(@"%@", mStr1);
    //比较，查找，提取，都是可以的
    //不同于不变字符串的操作:
    //1.在尾部追加
    [mStr1 appendString:@"123"];
    NSLog(@"%@", mStr1);
    //2.追加格式符
    [mStr1 appendFormat:@"%c", 'D'];
    NSLog(@"%@", mStr1);
    //3.插入
    [mStr1 insertString:@"XXXX" atIndex:5];
    NSLog(@"%@", mStr1);
    
    //删除,从第3个开始删除5个
    [mStr1 deleteCharactersInRange:NSMakeRange(3,5)];
    NSLog(@"%@", mStr1);
    //替换，从第3个开始替换掉2个，如果实际替换的字符串过长，不会替换掉多余的原串，但是会将原串变长
    [mStr1 replaceCharactersInRange:NSMakeRange(3, 2) withString:@"RRRRRRRR"];
    NSLog(@"%@", mStr1);
}
@end
