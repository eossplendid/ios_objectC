//
//  Dog.m
//  designMode
//
//  Created by 郝鹏 on 16/1/2.
//  Copyright © 2016年 郝鹏. All rights reserved.
//

#import "Dog.h"

@implementation Dog

-(NSString *) description{
    return @"this is a dog";
}
-(id) init {
    self = [super init];
    if (self) {
        ID = 1;
        age = 2;
        price = 69.0f;
    }
    return self;
}

-(id) initWithID:(int)newID{
    self = [super init];
    if (self) {
        ID = newID;
        age = 2;
        price = 69.9f;
    }
 //   return [self initWithID:newID andAge:2 andPrice:60.0f];
    return self;
}

-(id) initWithID:(int)newID andAge:(int)newAge andPrice:(float)newPrice{
    self = [super init];
    if (self) {
        ID = newID;
        age = newAge;
        price = newPrice;
    }

    SEL cmd;
    return self;
}



@end
