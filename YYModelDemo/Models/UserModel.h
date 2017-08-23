//
//  UserModel.h
//  YYModelDemo
//
//  Created by LIU YANG on 2017/8/22.
//  Copyright © 2017年 LIU YANG. All rights reserved.
//

#import "CommonModel.h"

@interface UserModel : CommonModel

@property (nonatomic, assign) UInt64 Uid;
@property (nonatomic, copy) NSString *Name;
@property (nonatomic, copy) NSDate *Created;


@end
