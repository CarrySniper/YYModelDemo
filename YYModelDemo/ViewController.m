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
    
    NSData *userData = [NSData dataWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"user" ofType:@"json"]];
    
    // 将 JSON (NSData,NSString,NSDictionary) 转换为 Model:
//    UserModel *user = [UserModel yy_modelWithJSON:userData];
    
//    NSLog(@"%llu %@ %@", user.uid, user.name, user.created);
//    // 将 Model 转换为 JSON 对象:
//    NSDictionary *json = [user yy_modelToJSONObject];
//    NSLog(@"%@", json);
    
    NSData *JSONData = [NSData dataWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"data" ofType:@"json"]];

    DataModel *data = [DataModel yy_modelWithJSON:JSONData];
//    NSLog(@"%@", data.user.name);
    //存储数据
    [data archiveModelTo:@"people"];
    //取出存储的数据， 可以通过NSLog看到输出的内容
    DataModel *samePeople = [DataModel unarchiverModelFrom:@"people"];
    NSLog(@"%@ %@", [samePeople description], samePeople.User.name);
    
    
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
