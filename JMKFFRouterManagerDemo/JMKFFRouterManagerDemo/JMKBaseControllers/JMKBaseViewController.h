//
//  ViewController.h
//  JMKFFRouterManagerDemo
//
//  Created by li on 2023/7/21.
//

#import <UIKit/UIKit.h>

typedef void (^RouterBackEventBlock)(void);
//获取设备的物理高度
#define ScreenWidth [UIScreen mainScreen].bounds.size.width
//获取设备的物理宽度
#define ScreenHeight [UIScreen mainScreen].bounds.size.height

@interface JMKBaseViewController : UIViewController

@property (nonatomic, strong) UILabel * titleLab;

@property (nonatomic, strong) UIButton * backBtn;

@property (nonatomic, strong) UILabel * paramLab;

@property (nonatomic, copy) RouterBackEventBlock backBlock;

- (void)backClick;

@end

