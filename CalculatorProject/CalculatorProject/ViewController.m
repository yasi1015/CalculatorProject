//
//  ViewController.m
//  CalculatorProject
//
//  Created by 高島良祐 on 2015/01/10.
//  Copyright (c) 2015年 高島良祐. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self UILabelInit];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)UILabelInit{
    UILabel *label = [[UILabel alloc] init];
    label.frame = CGRectMake(0, 70, 380, 80);
    label.backgroundColor = [UIColor yellowColor];
    [self.view addSubview:label];
}
@end
