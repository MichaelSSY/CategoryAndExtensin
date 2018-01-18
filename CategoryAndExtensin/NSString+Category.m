//
//  NSString+Category.m
//  CategoryAndExtensin
//
//  Created by weiyun on 2018/1/18.
//  Copyright © 2018年 孙世玉. All rights reserved.
//

#import "NSString+Category.h"
#import <objc/runtime.h>

static NSString *nameKey = @"nameKey";

@interface NSString ()

@end


@implementation NSString (Category)

// 运行时实现setter方法
- (void)setName:(NSString *)name
{
    // Associated:关联的
    objc_setAssociatedObject(self, &nameKey, name, OBJC_ASSOCIATION_COPY);
}

//运行时实现getter方法
- (NSString *)name
{
    return objc_getAssociatedObject(self, &nameKey);
}

+ (void)myCategoryMethod
{
    NSLog(@"哎呀，我的方法调用了");
    
}

@end
