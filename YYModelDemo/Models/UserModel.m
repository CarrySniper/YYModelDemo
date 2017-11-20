//
//  UserModel.m
//  YYModelDemo
//
//  Created by LIU YANG on 2017/8/22.
//  Copyright © 2017年 LIU YANG. All rights reserved.
//

#import "UserModel.h"

@implementation UserModel

//返回一个 Dict，将 Model 属性名对映射到 JSON 的 Key。
+ (NSDictionary *)modelCustomPropertyMapper {
    return @{@"Name" : @"name",
             @"Uid" : @"uid",
             @"Created" : @"created"};
}

@end
