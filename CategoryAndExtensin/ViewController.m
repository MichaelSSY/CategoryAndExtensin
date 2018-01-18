//
//  ViewController.m
//  CategoryAndExtensin
//
//  Created by weiyun on 2018/1/18.
//  Copyright © 2018年 孙世玉. All rights reserved.
//

#import "ViewController.h"
#import "NSString+Category.h"
#import <MJRefresh.h>
#import "Person.h"
#import "Person+Category.h"
#import "SubPerson.h"


@interface ViewController ()
- (void)myExtesionMethod;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    NSString *string = @"haha";
//    string.name = @"嘻嘻";
//
//    NSLog(@"%@",string.name);
//
//    [NSString myCategoryMethod];
    
    Person *person = [[Person alloc]init];
    person.nickname = @"玉子";
    NSLog(@"昵称：%@",person.nickname);
    
    [Person myCategoryMethod];
    
    SubPerson *subPerson = [[SubPerson alloc]init];
    subPerson.nickname = @"小龙";
    NSLog(@"昵称：%@",subPerson.nickname);
    
    [SubPerson myCategoryMethod];
    
    // 这里为什么倒入MJRefresh这个刷新库呢？因为他的里面就是利用这种做法。
    // UIScrollView+MJExtension
    
}

- (void)myExtesionMethod
{
    NSLog(@"错了");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
