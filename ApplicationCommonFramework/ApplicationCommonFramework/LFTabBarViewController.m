//
//  LFTabBarViewController.m
//  ApplicationCommonFramework
//
//  Created by max on 2021/6/24.
//

#import "LFTabBarViewController.h"
#import "LFNavigationViewController.h"
@interface LFTabBarViewController ()

@end

@implementation LFTabBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
static NSString * banck = @"";
static UIColor * tincolors = nil;
+(void)initWithBackImage:(NSString *)name andTinColot:( UIColor *)tincolor{
    banck = name;
    tincolors = tincolor;
}
-(UITabBarController *)addViewControllers:(NSArray<UIViewController *> *)arrray{
    return [self addViewControllers:arrray andImageNames:nil forTitles:nil];
}
-(UITabBarController *)addViewControllers:(NSArray<UIViewController *> *)arrray andImageNames:(NSArray *)images forTitles:(NSArray *)titles{
    
    return [self addViewControllers:arrray andImageNames:images selectedImageNames:images forTitles:titles];
}

-(UITabBarController *)addViewControllers:(NSArray<UIViewController *> *)arrray andImageNames:(NSArray *)images selectedImageNames:(NSArray *)selectedimages forTitles:(NSArray *)titles{
    [arrray enumerateObjectsUsingBlock:^(UIViewController * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        [self setViewController:obj title:titles.count ? titles[idx] : @"" image:images.count ? images[idx] : @"" selectImage:selectedimages.count ? selectedimages[idx] : @""];
    }];
    return self;
}


-(void)setViewController:(UIViewController *)viewController title:(NSString *)title image:(NSString *)image selectImage:(NSString *)selectImage {
    static NSInteger index = 0;
    viewController.tabBarItem.title = title;
    viewController.title = title;
    if (!tincolors) {
        viewController.tabBarItem.image = [UIImage imageNamed:image];
        viewController.tabBarItem.selectedImage = [UIImage imageNamed:selectImage];
    }else{
        viewController.tabBarItem.image = [[UIImage imageNamed:image] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        viewController.tabBarItem.selectedImage = [[UIImage imageNamed:selectImage] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    }
    
    viewController.tabBarItem.tag = index;
    index++;
    LFNavigationViewController *nav = [[LFNavigationViewController alloc]initWithRootViewController:viewController];
    if (banck) {
        [nav setBackImage:banck];
    }
    [self addChildViewController:nav];
}


@end
