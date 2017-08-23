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

#pragma mark - 单个对象进行归档及反归档
#pragma mark 归档
- (void)archiveModelTo:(NSString *)filename {
    NSString *path = [CommonModel documentDirectory:filename];
    BOOL success = [NSKeyedArchiver archiveRootObject:self toFile:path];
    NSLog(@"单个文件%@", success ? @"存储成功" : @"存储失败");
}
#pragma mark 读档
+ (id)unarchiverModelFrom:(NSString *)filename {
    NSString *path = [self documentDirectory:filename];
    if (![[NSFileManager defaultManager] fileExistsAtPath:path]) { return nil; }
    id object = [NSKeyedUnarchiver unarchiveObjectWithFile:path];
    return object;
}

#pragma mark - 获取documents文件夹下对应的目录
+ (NSString *)documentDirectory:(NSString *)filename {
    NSString *documents = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) lastObject];
    return [documents stringByAppendingPathComponent:filename];
}

@end
