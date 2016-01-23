//
//  Dog.h
//  designMode
//
//  Created by 郝鹏 on 16/1/2.
//  Copyright © 2016年 郝鹏. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Dog : NSObject
{
    //写字段
@protected        //子类可以继承，但不能被外部函数访问
    int ID;
@public           //可以继承，可以被访问
    int age;
@private
    float price;  //子类不能继承
}
//凡是以init开头的都是构造函数
-(id) init;
-(id) initWithID:(int)newID;
-(id) initWithID:(int)newID andAge:(int)newAge;
-(id) initWithID:(int)newID andAge:(int)newAge andPrice:(float)newPrice;

-(void) setID:(int)newID;
-(int) getID;

-(void) setAge:(int)newAge;
-(int) getAge;

-(void) setPrice:(float)newPrice;
-(float) getPrice;

-(void) setID:(int)newID andAge:(int)newAge;
-(void) setID:(int)newID andAge:(int)newAge andPrice:(int)newPrice;


@end
