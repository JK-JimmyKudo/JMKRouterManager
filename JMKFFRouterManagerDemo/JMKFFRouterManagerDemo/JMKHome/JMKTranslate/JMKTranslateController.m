//
//  ViewController.m
//  JMKFFRouterManagerDemo
//
//  Created by li on 2023/7/21.
//


#import "JMKTranslateController.h"

@interface JMKTranslateController ()

@end

@implementation JMKTranslateController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [self.view setBackgroundColor:[UIColor colorWithRed:[self random] green:[self random] blue:[self random] alpha:1]];
    });
}

- (CGFloat)random{
    return arc4random()%255/255.0;
}


@end
