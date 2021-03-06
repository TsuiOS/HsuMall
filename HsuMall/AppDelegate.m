//
//  AppDelegate.m
//  HsuMall
//
//  Created by xuning on 16/9/20.
//  Copyright © 2016年 xuning. All rights reserved.
//

#import "AppDelegate.h"
#import "XNMainTabBarController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    // 创建窗口
    self.window = [[UIWindow alloc]initWithFrame:[UIScreen mainScreen].bounds];
    self.window.rootViewController = [[XNMainTabBarController alloc]init];
    
    [self.window makeKeyAndVisible];
    
    [self setNavigationStyle];
    [self setStatusBarStyle:application];
    
    return YES;
}

// 统一设置NavigationStyle
- (void)setNavigationStyle {
    //获取设置外观对象
    UINavigationBar *navBar = [UINavigationBar appearance];
    
    //设置导航栏颜色
    [navBar setBarTintColor:DEFAULT_NAVBAR_COLOR];
    
    //设置导航栏文字为白色
    //富文本
    NSMutableDictionary *dict = [[NSMutableDictionary alloc]init];
    dict[NSForegroundColorAttributeName] = [UIColor whiteColor];
    dict[NSFontAttributeName] = [UIFont systemFontOfSize:17];
    
    [navBar setTitleTextAttributes:dict];
    
    [navBar setTintColor:[UIColor whiteColor]];
    
}
//统一设置状态栏外观
- (void)setStatusBarStyle:(UIApplication *)application {
    application.statusBarHidden = NO;
    
    application.statusBarStyle = UIStatusBarStyleLightContent;
    
}
- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
