//
//  AppDelegate.m
//  JMKFFRouterManagerDemo
//
//  Created by li on 2023/7/21.
//

#import "AppDelegate.h"
#import "ViewController.h"
#import "JMKFFRouterManager.h"
//"presentAViewController":"TestDemo://AControllers/AVC?jumptype=present",
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
/// 注册路由
-(void)registerRouteURLs{
    
    ////JMKHome/:controller 路径配置
    [JMKFFRouterManager registerRouteURLs:@[@"/JMKHome/:controller",
                                         @"/JMKHome/JMKTranslate/:controller",
                                         @"/JMKMine/:controller",
                                         @"/JMKPassport/:controller"] scheme:@"TestDemo://"];
    ///
    [JMKFFRouterManager registerObjectRouteURLs:@[@"/JMKPassport/:controller"] scheme:@"TestDemo://"];
    
    [JMKFFRouterManager registerCallbackRouteURLs:@[@"/JMKHome/JMKTranslate/:controller"] scheme:@"TestDemo://"];
    
}
@end
