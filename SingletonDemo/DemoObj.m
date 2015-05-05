//
//  DemoObj.m
//  SingletonDemo
//
//  Created by bottle on 15-5-5.
//  Copyright (c) 2015年 bottle. All rights reserved.
//

#import "DemoObj.h"

@implementation DemoObj

+ (instancetype)shareDemoObj {
    return [[self alloc] init];
}

//每个对象初始化都会调用，改写此方法实现单例
+ (instancetype)allocWithZone:(struct _NSZone *)zone {
    static DemoObj *instance;
    //下面的代码只执行一次,并且是线程安全的
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [super allocWithZone:zone];
    });
    return instance;
}

@end
