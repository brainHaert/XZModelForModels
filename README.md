# XZModelForModels

这个是一个简洁而强大的模型框架，无依赖，纯天然。详细使用方法在Demo里有详细演示，使用的时候只要拉JYModelModel的两个文件去你的项目就可以！
This is a simple and powerful framework for the model. Detailed use of the method in the Demo there is a detailed demonstration, the use of JYModelModel as long as the two documents to your project can be!

You just need put "JyModelModel" into your project

## JYModelModel的外部方法：
///According to the dictionary change model
///根据字典变模型
- (instancetype)initWithDictionary:(NSDictionary *)dict;

///Model to the dictionary (no value will not turn out, please ensure that at least one value)
///模型转字典(没有值的不会转出来，请确保起码有一个值)
- (NSDictionary *)modelChangeIntoDictionary;

You can add external methods based on your own needs.
你可以根据你自己的需要添加外部方法。

### 只要继承我的JYModelModel，就能拥有那些方法，妥妥的
### As long as the inheritance of my JYModelModel, you can have those methods, properly
Example:
@interface PersonModel : JYModelsModel


#### 里面的对象方法都是简单易懂的对象方法，看了你就知道，用了都说好。
#### Inside the object method is simple and easy to understand the object method, you will see that the use of good.
