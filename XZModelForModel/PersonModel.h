//
//  PersonModel.h
//  XZModelModel
//
//  Created by 揭子龙 on 16/8/21.
//  Copyright © 2016年 XieZi. All rights reserved.
//

#import "JYModelsModel.h"

///只要继承我的JYModelModel，就能拥有那些方法，妥妥的
@interface PersonModel : JYModelsModel

@property (nonatomic, copy) NSString *name;

@property (nonatomic, copy) NSString *sex;

@property (nonatomic, copy) NSNumber *age;

@property (nonatomic, copy) NSString *address;

@end
