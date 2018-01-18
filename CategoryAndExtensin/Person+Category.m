//
//  Person+Category.m
//  CategoryAndExtensin
//
//  Created by weiyun on 2018/1/18.
//  Copyright © 2018年 孙世玉. All rights reserved.
//

#import "Person+Category.h"
#import <objc/runtime.h>

@implementation Person (Category)

// 如果这里不写setter和getter方法就会有警告！！

static NSString *nicknameKey = @"nicknameKey";

- (void)setNickname:(NSString *)nickname
{
    objc_setAssociatedObject(self, &nicknameKey, nickname, OBJC_ASSOCIATION_COPY);
}

- (NSString *)nickname
{
    return objc_getAssociatedObject(self, &nicknameKey);
}

+ (void)myCategoryMethod
{
    NSLog(@"终于调用我了");
}
@end
