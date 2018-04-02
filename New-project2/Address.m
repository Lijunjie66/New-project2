//
//  Address.m
//  New-project2
//
//  Created by Geraint on 2018/4/2.
//  Copyright © 2018年 kilolumen. All rights reserved.
//

#import "Address.h"

@implementation Address

// 重写由Address类的父类NSObject提供的默认init和dealloc方法
- (id) init {
    if ((self = [super init])) {
        NSLog(@"Initializing Address object");
    }
    return self;
}

// MRR状态下才可以写dealloc,ARC自带
- (void) dealloc {
    NSLog(@"Deallocating Address object");
    [super dealloc];
}

@end
