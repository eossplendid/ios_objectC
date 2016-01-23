//
//  Singleton.m
//  designMode
//
//  Created by 郝鹏 on 16/1/17.
//  Copyright © 2016年 郝鹏. All rights reserved.
//

#import "Singleton.h"

@implementation Singleton
static Singleton *instance;

+(id)sharedSingleton {
    @synchronized(self) {
        if (instance == nil) {
            instance = [[[self class] alloc] init];
        }
    }

    return instance;
}

-(id) init {
    self = [super init];
    if (self) {
        self.name = [NSString stringWithFormat:@"default"];
    }
    return self;
}

@synthesize name = _name;

+(void) initialize{
    static BOOL initialized = NO;
    if (initialized == NO) {
        initialized = YES;
        instance = [[self alloc] init];
    }
}

+(id) sharedSingleton2 {
    static dispatch_once_t once;
    dispatch_once(&once,^{
        instance = [[self alloc] init];
    });
    return instance;
}

+(id) allocWithZone:(struct _NSZone *)zone {
    return [self sharedSingleton];
}
@end
