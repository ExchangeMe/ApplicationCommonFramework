//
//  AppDelegate.m
//  ApplicationCommonFramework
//
//  Created by max on 2021/6/24.
//

#import "AppDelegate.h"
#import "LFTabBarViewController.h"
#import "ViewController.h"
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    
    self.window = [[UIWindow alloc]initWithFrame:[UIScreen mainScreen].bounds];
    
    LFTabBarViewController * vc = [LFTabBarViewController new];
    self.window.rootViewController = [vc addViewControllers:@[ViewController.new]];
    [self.window makeKeyAndVisible];
    
    
    
    
    
    
    return YES;
}



@end
