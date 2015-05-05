//
//  ViewController.m
//  SingletonDemo
//
//  Created by bottle on 15-5-5.
//  Copyright (c) 2015年 bottle. All rights reserved.
//

#import "ViewController.h"
#import "DemoObj.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    DemoObj *obj1 = [[DemoObj alloc] init];
    DemoObj *obj2 = [DemoObj shareDemoObj];
    NSLog(@"%@----%@",obj1,obj2);
}

@end
