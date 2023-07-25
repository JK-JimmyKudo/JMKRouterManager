//
//  ViewController.m
//  JMKFFRouterManagerDemo
//
//  Created by li on 2023/7/21.
//

#import "ViewController.h"
#import "JMKFFRouterManager.h"
#import "JMKBaseViewController.h"
//#import "JMKHomeViewController.h"
//#import "JMKTranslateViewController.h"
//#import "JMKMineViewController.h"
//#import "JMKPassportViewController.h"
//#import "JMKDestinationViewController.h"
@interface ViewController ()

@property (nonatomic,strong) UIImage *image;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor redColor];
    
    
    NSArray * ary = @[@"JMKHomeController",@"JMKMineController",@"JMKPassportController",@"JMKTranslateController",@"JMKDestinationController",@"presentJMKHomeController"];
    
    for (int i = 0; i < 6; i ++) {
        UIButton * btn = [[UIButton alloc] initWithFrame:CGRectMake(50, 100 + i * 100, 280, 50)];
        [btn setBackgroundColor:[UIColor blueColor]];
        [self.view addSubview:btn];
        [btn setTitle:ary[i] forState:UIControlStateNormal];
        btn.tag = i;
        [btn addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
}

- (void)btnClick:(UIButton *)sender{
    switch (sender.tag) {
        case 0:
        {
            [JMKFFRouterManager routeWithName:@"JMKHomeController" isPresent:NO];
            //            [FFRouterManager routeWithName:@"JMKHomeController"  withParameters:@{@"111":@"222"}  isPresent:NO];
        }
            break;
        case 1:
        {
            
            NSDictionary *parameters = @{@"name":@"222",@"sex":@"男"} ;
            //            [FFRouterManager routeWithName:@"JMKMineController" isPresent:NO];
            [JMKFFRouterManager routeWithName:@"JMKMineController"  withParameters:@{@"parameters":parameters}  isPresent:NO];
        }
            break;
        case 2:
        {
            NSDictionary *parameters = @{@"name":@"222",@"sex":@"男"} ;
            JMKBaseViewController * vc = [JMKFFRouterManager routeObjectWithName:@"JMKPassportController" isPresent:YES];
            __weak ViewController * weakself = self;
            __weak JMKBaseViewController * weakvc = vc;
            vc.backBlock = ^(NSString *name) {
                NSLog(@"name -- %@",name);
            };
//
//            [JMKFFRouterManager routeWithName:@"JMKPassportController"  withParameters:@{@"parameters":parameters}  isPresent:NO];
        }
            break;
        case 3:
        {
            __weak ViewController * weakself = self;
            [JMKFFRouterManager routeCallbackWithName:@"JMKTranslateController" isPresent:NO targetCallback:^(id callbackObjc) {
                NSLog(@"callbackObjc = %@",callbackObjc);
                
            }];
        }
            break;
        case 4:
                      
            [JMKFFRouterManager routeWithName:@"JMKDestinationController" isPresent:NO];

            
            break;
        case 5:
            [JMKFFRouterManager routeWithName:@"JMKHomeController" isPresent:YES];
            break;
        default:
            break;
    }
}

@end
