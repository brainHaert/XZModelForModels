//
//  SchoolModel.h
//  XZModelModel
//
//  Created by 揭子龙 on 16/8/21.
//  Copyright © 2016年 XieZi. All rights reserved.
//

#import "JYModelsModel.h"
#import "PersonModel.h"

@interface SchoolModel : JYModelsModel

@property (nonatomic, copy) NSNumber *peopleCount;

@property (nonatomic, copy) NSString *name;

@property (nonatomic, strong) PersonModel *onePerson;

@end
