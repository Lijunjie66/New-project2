//
//  OrderItem.m
//  New-project2
//
//  Created by Geraint on 2018/4/2.
//  Copyright © 2018年 kilolumen. All rights reserved.
//

#import "OrderItem.h"

@implementation OrderItem

// 自定义初始化方法将输入参数值赋予实例变量。由于OrderItem对象不再创建输入参数，实例变量就不再拥有该对象的所有权。为了避免这个对象因其他操作被无意释放，应向变量name发送一条retain消息，从而获取该对象的所有权。
- (id) initWithName:(NSString *)itemName {
    if ((self = [super init])) {
        NSLog(@"Initializing OrderItem object");
        name = itemName;
        [name retain];
    }
    return self;
}

// 在dealloc方法中，向变量name引用的对象发送一条release消息，然后调用OrderItem类的父类的dealloc方法，释放这个对象占用的内存。
- (void) dealloc {
    NSLog(@"Deallocating OrderItem object");
    [name release];
    [super dealloc];
}

@end
