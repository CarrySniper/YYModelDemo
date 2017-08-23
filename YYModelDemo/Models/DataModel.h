//
//  DataModel.h
//  YYModelDemo
//
//  Created by LIU YANG on 2017/8/22.
//  Copyright © 2017年 LIU YANG. All rights reserved.
//

#import "CommonModel.h"
#import "UserModel.h"

@interface DataModel : CommonModel

@property (nonatomic, copy) NSString *ID;
@property (nonatomic, copy) NSString *Name;

@property (nonatomic, copy) UserModel *User;// 需要序列化

@end
