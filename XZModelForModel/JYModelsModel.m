//
//  JYModelsModel.m
//  IamBestDoctor
//
//  Created by 揭子龙 on 16/4/19.
//  Copyright © 2016年 XieZi. All rights reserved.
//

#import "JYModelsModel.h"
#import <objc/runtime.h>// 导入运行时文件

@implementation JYModelsModel
#pragma mark 用字典来初始化
- (instancetype)initWithDictionary:(NSDictionary *)dict
{
    self = [super init];
    
    if (self) {
        
        [self setValuesForKeysWithDictionary:dict];//字典转模型
    }
    return self;
}

#pragma mark 去除这个方法
- (void)setValue:(id)value forUndefinedKey:(NSString *)key {
    //这样写，就能让这个方法失效。这个方法会检测没有找到的key，会导致程序崩溃。
}

#pragma mark 模型转字典
- (NSDictionary *)modelChangeIntoDictionary {
    
    NSMutableDictionary *tempDict = [NSMutableDictionary dictionary];
    
    NSArray *keys = [self getProperties:[self class]];// #import "NSArray+Extension.h" 使用分类
    
    for (NSString *key in keys) {
        
        id value = [self valueForKey:key];
        
        if (value != nil) {
            
            [tempDict setObject:value forKey:key];
        }
    }
    
    //    NSLog(@"%@",tempDict);
    
    return [tempDict copy];
}

//返回当前类的所有属性
- (NSArray *)getProperties:(Class)thisClass {
    
    // 获取当前类的所有属性
    unsigned int count;// 记录属性个数
    objc_property_t *properties = class_copyPropertyList(thisClass, &count);
    // 遍历
    NSMutableArray *mArray = [NSMutableArray array];
    for (int i = 0; i < count; i++) {
        
        // An opaque type that represents an Objective-C declared property.
        // objc_property_t 属性类型
        objc_property_t property = properties[i];
        // 获取属性的名称 C语言字符串
        const char *cName = property_getName(property);
        
        // 转换为Objective C 字符串
        NSString *name = [NSString stringWithCString:cName encoding:NSUTF8StringEncoding];
        [mArray addObject:name];
    }
    
    return mArray.copy;
}

@end
