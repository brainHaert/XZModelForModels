//
//  ViewController.m
//  XZModelModel
//
//  Created by 揭子龙 on 16/8/21.
//  Copyright © 2016年 XieZi. All rights reserved.
//

#import "ViewController.h"
#import "PersonModel.h"
#import "SchoolModel.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //单个模型
    NSMutableDictionary *tempPersonDict = [NSMutableDictionary dictionary];
    
    [tempPersonDict setObject:@"girl" forKey:@"sex"];
    
    [tempPersonDict setObject:@"Jack" forKey:@"name"];
    
    [tempPersonDict setObject:@18 forKey:@"age"];
    
    [tempPersonDict setObject:@"New York" forKey:@"place"];//这个是我故意没有对应上的，
    
    PersonModel *pModel = [[PersonModel alloc]initWithDictionary:tempPersonDict];//字典转模型
    
    NSLog(@"%@",pModel);//打断点在这，你就能看到这个模型里面的值怎么样了。
    
    NSDictionary *modelDict = [pModel modelChangeIntoDictionary];//模型转字典
    
    NSLog(@"%@",modelDict);
    
    //模型嵌套模型，该模型的实现方法里要写一些东西
    NSMutableDictionary *tempSchoolDict = [NSMutableDictionary dictionary];
    
    [tempSchoolDict setObject:@"Newton" forKey:@"name"];
    
    [tempSchoolDict setObject:@1000 forKey:@"peopleCount"];
    
    [tempSchoolDict setObject:tempPersonDict forKey:@"onePerson"];
    
    SchoolModel *sModel = [[SchoolModel alloc]initWithDictionary:tempSchoolDict];
    
    NSLog(@"%@",sModel);//打断点在这，你就能看到这个模型里面的值怎么样了。
    
    //但是如果是模型嵌套模型，用模型转字典的时候会转不出里面的模型。以后我会接着更新，试着把这个功能实现
    NSDictionary *schoolDict = [sModel modelChangeIntoDictionary];
    
    NSLog(@"%@",schoolDict);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
