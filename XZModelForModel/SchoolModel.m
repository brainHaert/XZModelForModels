//
//  SchoolModel.m
//  XZModelModel
//
//  Created by 揭子龙 on 16/8/21.
//  Copyright © 2016年 XieZi. All rights reserved.
//

#import "SchoolModel.h"

@implementation SchoolModel

- (void)setValue:(id)value forKey:(NSString *)key {
    
    //抢在父类调用之前就设置，并阻止父类实现，就可以达到模型嵌套模型效果
    if ([key isEqualToString:@"onePerson"]) {
        
        NSDictionary *dict = value;
        
        self.onePerson = [[PersonModel alloc]initWithDictionary:dict];
        
        return;
    }
    
    [super setValue:value forKey:key];
}

@end
