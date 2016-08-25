# XZModelForModels
这个是一个简洁而强大的模型框架，无依赖，纯天然。详细使用方法在Demo里有详细演示，使用的时候只要拉JYModelModel的两个文件去你的项目就可以！

You just need put "JyModelModel" into your project

## JYModelModel的外部方法：
///根据字典变模型
- (instancetype)initWithDictionary:(NSDictionary *)dict;

///模型转字典(没有值的不会转出来，请确保起码有一个值)
- (NSDictionary *)modelChangeIntoDictionary;

你可以根据你自己的需要添加外部方法。

### 只要继承我的JYModelModel，就能拥有那些方法，妥妥的
Example:
@interface PersonModel : JYModelsModel


#### 里面的对象方法都是简单易懂的对象方法，看了你就知道，用了都说好。
