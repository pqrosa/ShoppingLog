//
//  AppDelegate.m
//  ShoppingLog
//
//  Created by Afonso Junior on 02/04/13.
//  Copyright (c) 2013 iLearn. All rights reserved.
//

#import "AppDelegate.h"

#import "InserirPedidosViewController.h"
#import "TestTableViewController.h"

@implementation AppDelegate

@synthesize window, viewController;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    // Override point for customization after application launch.
	
    InserirPedidosViewController *inserirPedidosViewController = [[InserirPedidosViewController alloc] init];
    TestTableViewController *testTableViewController = [[TestTableViewController alloc] init];
    
    // To configure the tabs of a tab bar controller, you assign the view controllers that provide the root view for each tab to the viewControllers property.
    UITabBarController *tabBarController = [[UITabBarController alloc] init];    
    NSArray *tabBarViewControllers = [[NSArray alloc] initWithObjects:inserirPedidosViewController, testTableViewController, nil];
    [tabBarController setViewControllers:tabBarViewControllers];
    
    // Tab bar items are configured through their corresponding view controller. To associate a tab bar item with a view controller, create a new instance of the UITabBarItem class, configure it appropriately for the view controller, and assign it to the view controller’s tabBarItem property.
    // Os ícones podem ter no máximo 30x30 px
    
    UITabBarItem *inserirPedidosTabBarItem = [[UITabBarItem alloc] initWithTitle:@"Inserir" image:[UIImage imageNamed:@"insert.png"] tag:0];
    [[tabBarViewControllers objectAtIndex:0] setTabBarItem:inserirPedidosTabBarItem];
    
    UITabBarItem *listarPedidosTabBarItem = [[UITabBarItem alloc] initWithTitle:@"Listar" image:[UIImage imageNamed:@"list.png"] tag:0];
    [[tabBarViewControllers objectAtIndex:1] setTabBarItem:listarPedidosTabBarItem];
    
    self.window.rootViewController = tabBarController;
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
