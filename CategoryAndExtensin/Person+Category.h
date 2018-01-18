//
//  Person+Category.h
//  CategoryAndExtensin
//
//  Created by weiyun on 2018/1/18.
//  Copyright © 2018年 孙世玉. All rights reserved.
//

#import "Person.h"

@interface Person (Category)

@property (nonatomic , copy) NSString *nickname;

+ (void)myCategoryMethod;

@end
