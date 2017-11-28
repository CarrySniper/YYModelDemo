//
//  CommonModel.m
//  YYModelDemo
//
//  Created by LIU YANG on 2017/8/23.
//  Copyright © 2017年 LIU YANG. All rights reserved.
//

#import "CommonModel.h"

@implementation CommonModel

#pragma mark - 直接添加以下代码即可自动完成序列化／反序列化
- (void)encodeWithCoder:(NSCoder *)aCoder {
    [self yy_modelEncodeWithCoder:aCoder];
}
- (id)initWithCoder:(NSCoder *)aDecoder {
    self = [super init];
    return [self yy_modelInitWithCoder:aDecoder];
}
- (id)copyWithZone:(NSZone *)zone {
    return [self yy_modelCopy];
}
- (NSUInteger)hash {
    return [self yy_modelHash];
}
- (BOOL)isEqual:(id)object {
    return [self yy_modelIsEqual:object];
}
- (NSString *)description {
    return [self yy_modelDescription];
}

#pragma mark - 进行NSUserDefaults存取
#pragma mark 归档
- (void)archiveModelWithKey:(NSString *)key {
    NSData *archiveData = [NSKeyedArchiver archivedDataWithRootObject:self];
    [[NSUserDefaults standardUserDefaults] setObject:archiveData forKey:key];
    [[NSUserDefaults standardUserDefaults] synchronize];
}

#pragma mark 读档
+ (id)unarchiverModelWithKey:(NSString *)key {
    NSData *unarchiveObject = [[NSUserDefaults standardUserDefaults] objectForKey:key];
    return [NSKeyedUnarchiver unarchiveObjectWithData:unarchiveObject];
}

@end
