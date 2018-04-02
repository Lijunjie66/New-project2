//
//  OrderEntry.h
//  New-project2
//
//  Created by Geraint on 2018/4/2.
//  Copyright © 2018年 kilolumen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "OrderItem.h"
#import "Address.h"


@interface OrderEntry : NSObject

// 表明OrderEntry对象拥有3个实例变量和一个自定义初始化方法
{
    @public OrderItem *item;
    NSString *orderId;
    Address *shippingAddress;
}

- (id) initWithId:(NSString *)oid;

@end
