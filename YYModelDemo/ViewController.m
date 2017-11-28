//
//  ViewController.m
//  YYModelDemo
//
//  Created by LIU YANG on 2017/8/22.
//  Copyright © 2017年 LIU YANG. All rights reserved.
//

#import "ViewController.h"

#import "UserModel.h"
#import "DataModel.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self modelWithJSON];
    
    [self modelInModelWithJSON];
}

- (void)modelWithJSON {
    NSData *userData = [NSData dataWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"user" ofType:@"json"]];
    // 将 JSON (NSData,NSString,NSDictionary) 转换为 Model:
    UserModel *user = [UserModel yy_modelWithJSON:userData];
    NSLog(@"json转模型 %llu %@ %@", user.Uid, user.Name, user.Created);
    // 将 Model 转换为 JSON 对象:
    NSDictionary *json = [user yy_modelToJSONObject];
    NSLog(@"模型转json：%@", json);
}

- (void)modelInModelWithJSON {
    NSData *JSONData = [NSData dataWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"data" ofType:@"json"]];
    
    DataModel *model = [DataModel yy_modelWithJSON:JSONData];
    NSLog(@"json转模型 %@", model.User.Name);
    //存储数据
    [model archiveModelWithKey:@"people"];
    //取出存储的数据， 可以通过NSLog看到输出的内容
    DataModel *samePeople = [DataModel unarchiverModelWithKey:@"people"];
    NSLog(@"取出存储的数据：%@ %@", [samePeople description], samePeople.User.Name);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
