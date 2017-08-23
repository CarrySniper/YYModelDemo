//
//  CommonModel.h
//  YYModelDemo
//
//  Created by LIU YANG on 2017/8/23.
//  Copyright © 2017年 LIU YANG. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <YYModel/YYModel.h>

@interface CommonModel : NSObject<NSCoding, NSCopying>

/**
 数据持久化归档

 @param filename 存储的文件名
 */
- (void)archiveModelTo:(NSString *)filename;

/**
 数据持久化读档

 @param filename 存储的文件名
 @return 读档结果对象
 */
+ (id)unarchiverModelFrom:(NSString *)filename;

@end
