//
//  LYAppDelegate.m
//  NNKOU
//
//  Created by LinYong on 14-5-3.
//  Copyright (c) 2014年 LinYong. All rights reserved.
//

#import "LYAppDelegate.h"
#import "LYMainPageViewController.h"
#import "LYClassifyViewController.h"
#import "LYNearbyViewController.h"
#import "LYMeViewController.h"

@implementation LYAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    //[[NSBundle mainBundle] loadNibNamed:@"TabBarController" owner:self options:nil];
     
    UIViewController *oneVC = [[LYMainPageViewController alloc]initWithNibName:@"LYMainPageViewController" bundle:nil];
    oneVC.title = @"主页";
    UINavigationController *Nav1 = [[UINavigationController alloc]initWithRootViewController:oneVC];
    Nav1.tabBarItem = [[UITabBarItem alloc] initWithTitle:oneVC.title image:[UIImage imageNamed:@"mainPage.png"] tag:0];
    
    UIViewController *twoVC = [[LYClassifyViewController alloc]initWithNibName:@"LYClassifyViewController" bundle:nil];
    twoVC.title = @"分类";
    UINavigationController *Nav2 = [[UINavigationController alloc]initWithRootViewController:twoVC];
    Nav2.tabBarItem = [[UITabBarItem alloc] initWithTitle:twoVC.title image:[UIImage imageNamed:@"classify.png"] tag:1];
    
    UIViewController *threeVC = [[LYNearbyViewController alloc]initWithNibName:@"LYNearbyViewController" bundle:nil];
    threeVC.title = @"附近";
    UINavigationController *Nav3 = [[UINavigationController alloc]initWithRootViewController:threeVC];
    Nav3.tabBarItem = [[UITabBarItem alloc] initWithTitle:threeVC.title image:[UIImage imageNamed:@"nearby.png"] tag:2];
    
    UIViewController *fourVC = [[LYMeViewController alloc]initWithNibName:@"LYMeViewController" bundle:nil];
    fourVC.title = @"我的";
    UINavigationController *Nav4 = [[UINavigationController alloc]initWithRootViewController:fourVC];
    Nav4.tabBarItem = [[UITabBarItem alloc] initWithTitle:fourVC.title image:[UIImage imageNamed:@"me.png"] tag:3];
    
    self.tabbarController = [[UITabBarController alloc] init];
    self.tabbarController.viewControllers =@[Nav1,Nav2,Nav3,Nav4];
    
    /*
    UITabBarItem* item0 = [self.tabbarController.tabBar.items objectAtIndex:0];
    [item0 setFinishedSelectedImage:[UIImage imageNamed:@"mainPage.png"]
        withFinishedUnselectedImage:[UIImage imageNamed:@"mainPage.png"]];
    
    
    UITabBarItem* item1 = [self.tabbarController.tabBar.items objectAtIndex:1];
    [item1 setFinishedSelectedImage:[UIImage imageNamed:@"classify.png"]
        withFinishedUnselectedImage:[UIImage imageNamed:@"classify.png"]];
    
    
    UITabBarItem* item2 = [self.tabbarController.tabBar.items objectAtIndex:2];
    [item2 setFinishedSelectedImage:[UIImage imageNamed:@""]
        withFinishedUnselectedImage:[UIImage imageNamed:@""]];
    
    UITabBarItem* item3 = [self.tabbarController.tabBar.items objectAtIndex:3];
    [item3 setFinishedSelectedImage:[UIImage imageNamed:@""]
        withFinishedUnselectedImage:[UIImage imageNamed:@""]];
    */
    
    self.window.rootViewController = self.tabbarController;
    
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
