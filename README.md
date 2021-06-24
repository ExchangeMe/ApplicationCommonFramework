# ApplicationCommonFramework

应用的基础框架
``` 
pod 'ApplicationCommonFramework'
``` 

### 简易封装可自定义的App框架

# 调用方法：

``` 
-(UITabBarController *)addViewControllers : (NSArray <UIViewController *> *)arrray andImageNames:( NSArray  * _Nullable )images selectedImageNames:( NSArray  * _Nullable )selectedimages forTitles:( NSArray * _Nullable  )titles;
```


# 示例：
```
self.window = [[UIWindow alloc]initWithFrame:[UIScreen mainScreen].bounds];
self.window.rootViewController = [[LFTabBarViewController new] addViewControllers:@[ViewController.new,ViewController.new]];
[self.window makeKeyAndVisible];
```
