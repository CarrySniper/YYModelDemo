//
//  DataModel.m
//  YYModelDemo
//
//  Created by LIU YANG on 2017/8/22.
//  Copyright © 2017年 LIU YANG. All rights reserved.
//

#import "DataModel.h"

@implementation DataModel

// 返回容器类中的所需要存放的数据类型 (以 Class 或 Class Name 的形式)。
+ (NSDictionary *)modelContainerPropertyGenericClass {
    return @{@"User" : [UserModel class]};
}

@end
