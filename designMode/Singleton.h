//
//  Singleton.h
//  designMode
//
//  Created by 郝鹏 on 16/1/17.
//  Copyright © 2016年 郝鹏. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Singleton : NSObject
{
    NSString *_name;
}

@property (nonatomic, retain) NSString *name;

+(id) sharedSingleton;
@end
