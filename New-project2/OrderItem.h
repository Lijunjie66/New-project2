//
//  OrderItem.h
//  New-project2
//
//  Created by Geraint on 2018/4/2.
//  Copyright © 2018年 kilolumen. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface OrderItem : NSObject

// OrderItem类中含有一个名为name的全局实例变量，以及一个自定义初始化方法
{
@public NSString *name;
}

- (id) initWithName:(NSString *)itemName;

@end
