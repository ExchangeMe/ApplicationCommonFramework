//
//  LFNavigationViewController.m
//  ApplicationCommonFramework
//
//  Created by max on 2021/6/24.
//

#import "LFNavigationViewController.h"

@interface LFNavigationViewController ()

@end

@implementation LFNavigationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
 
- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated {
    if ([self.viewControllers count] == 1) {
        viewController.hidesBottomBarWhenPushed = YES;
    } else {
        viewController.hidesBottomBarWhenPushed = NO;
      }
    [super pushViewController:viewController animated:animated];
}

-(void)setBackImage:(NSString *)name{
    UIImage *image = [UIImage imageNamed:name];
    image = [image imageWithRenderingMode:UIImageRenderingModeAutomatic];
    self.navigationBar.backIndicatorImage = image;
    self.navigationBar.backIndicatorTransitionMaskImage = image;
}

@end
