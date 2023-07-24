//
//  AppDelegate.m
//  JMKFFRouterManagerDemo
//
//  Created by li on 2023/7/21.
//

#import "AppDelegate.h"
#import "ViewController.h"
#import "JMKFFRouterManager.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    ViewController * vc = [[ViewController alloc] init];
    UINavigationController * nav = [[UINavigationController alloc] initWithRootViewController:vc];
    self.window.rootViewController = nav;
    [self.window makeKeyAndVisible];
    
    [self registerRouteURLs];
    
    return YES;
    
    
}

-(void)registerRouteURLs{
    
    [JMKFFRouterManager registerRouteURLs:@[@"/JMKHomeViewController/:controller",
                                         @"/JMKHomeViewController/:controller",
                                         @"/JMKTranslateViewController/:controller",
                                         @"/JMKMineViewController/:controller",
                                         @"/AControllers/DControllers/:controller"] scheme:@"TestDemo://"];
    [JMKFFRouterManager registerObjectRouteURLs:@[@"/JMKMineViewController/:controller"] scheme:@"TestDemo://"];
    [JMKFFRouterManager registerCallbackRouteURLs:@[@"/AControllers/DControllers/:controller"] scheme:@"TestDemo://"];
    
}
@end
