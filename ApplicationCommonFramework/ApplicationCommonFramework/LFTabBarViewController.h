//
//  LFTabBarViewController.h
//  ApplicationCommonFramework
//
//  Created by max on 2021/6/24.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface LFTabBarViewController : UITabBarController

/// diyLeftBackImage
/// @param name imageName
/// @param tincolor tabbar color
+(void)initWithBackImage:(NSString * _Nullable )name andTinColot:(UIColor * _Nullable)tincolor;

-(UITabBarController *)addViewControllers : (NSArray <UIViewController *> *)arrray;

-(UITabBarController *)addViewControllers : (NSArray <UIViewController *> *)arrray andImageNames:( NSArray  * _Nullable )images forTitles:( NSArray * _Nullable  )titles;

-(UITabBarController *)addViewControllers : (NSArray <UIViewController *> *)arrray andImageNames:( NSArray  * _Nullable )images selectedImageNames:( NSArray  * _Nullable )selectedimages forTitles:( NSArray * _Nullable  )titles;
@end

NS_ASSUME_NONNULL_END
