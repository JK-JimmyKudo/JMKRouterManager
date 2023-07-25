//
//  ViewController.m
//  JMKFFRouterManagerDemo
//
//  Created by li on 2023/7/21.
//

#import "JMKMineController.h"

@interface JMKMineController ()
{
    NSString * _sex;
}
@end

@implementation JMKMineController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.paramLab.text = [NSString stringWithFormat:@"JMKMineController name = %@,sex = %@,age = %@",self.name,_sex,_age];
    NSLog(@"JMKMineController name = %@,sex = %@",self.name,_sex);

    NSLog(@"JMKMineController name = %@,parameters = %@",self.name,self.parameters);

}



@end
