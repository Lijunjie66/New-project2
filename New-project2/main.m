//
//  main.m
//  New-project2
//
//  Created by Geraint on 2018/4/2.
//  Copyright © 2018年 kilolumen. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import "OrderEntry.h"

// 工程默认ARC，改成MRR
int main(int argc, char * argv[]) {
    @autoreleasepool {
        
        // 创建手动释放的OrderEntry对象
        NSString *orderId = [[NSString alloc] initWithString:@"A1"];
        OrderEntry *entry = [[OrderEntry alloc] initWithId:orderId];
        
        // 释放orderId变量（OrderEntry对象仍旧引用着改变量，所以该变量不会被释放）
        [orderId release];
        NSLog(@"New order, ID = %@,item: %@",entry->orderId,entry->item->name);
        
        // 必须手动释放OrderEntry对象
        [entry release];
        
        // 创建一个自动释放的OrderEntry对象，在自动释放池代码块的末尾释放该对象
        // the autorelease pool block
        OrderEntry *autoEntry = [[[OrderEntry alloc] initWithId:@"A2"] autorelease];
        NSLog(@"New order , ID = %@, item: %@",autoEntry->orderId, autoEntry->item->name);
        
        
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}
