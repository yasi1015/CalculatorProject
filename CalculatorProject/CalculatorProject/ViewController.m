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

@implementation ViewController{
    int _button;
    NSString *str;
    UILabel *label;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self UILabelInit];
    [self UIButtonInit];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void)UILabelInit{
    label = [[UILabel alloc] init];
    label.frame = CGRectMake(0, 70, 380, 80);
    label.backgroundColor = [UIColor colorWithRed:64/255.0 green:170/255.0 blue:239/255.0 alpha:1.0];
    [self.view addSubview:label];
}
-(void)ScreenInit{
    NSLog(@"Call ScreenInit");
       label.text = str;
}

-(void)UIButtonInit{
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    btn.frame = CGRectMake(135, 300, 100, 30);
    [btn setTitle:@"１" forState:UIControlStateNormal];

    // ボタンがタッチダウンされた時にhogeメソッドを呼び出す
    [btn addTarget:self action:@selector(Receives:)
  forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:btn];
    [btn.titleLabel setFont:[UIFont systemFontOfSize:24]];
}

-(void)Receives:(UIButton*)button{
    NSLog(@"Receives");
   
    _button += 1;
    str =[NSString stringWithFormat:@"%d",_button];
    NSLog(@"%ld",(long)str);
  
    [self ScreenInit];
}
@end
