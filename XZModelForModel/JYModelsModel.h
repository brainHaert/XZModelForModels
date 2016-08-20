//
//  JYModelsModel.h
//  IamBestDoctor
//
//  Created by 揭子龙 on 16/4/19.
//  Copyright © 2016年 XieZi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface JYModelsModel : NSObject

///根据字典变模型
- (instancetype)initWithDictionary:(NSDictionary *)dict;

///模型转字典(没有值的不会转出来，请确保起码有一个值)
- (NSDictionary *)modelChangeIntoDictionary;

@end
