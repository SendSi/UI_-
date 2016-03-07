//
//  myAllLoyViewController.m
//  UI_新彩票
//
//  Created by scuplt on 16-3-3.
//  Copyright (c) 2016年 itcast0413. All rights reserved.
//

#import "myAllLoyViewController.h"

@interface myAllLoyViewController ()
- (IBAction)ClickTop:(UIButton *)sender;

@end

@implementation myAllLoyViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


- (IBAction)ClickTop:(UIButton *)sender {
    [UIView animateWithDuration:0.2 animations:^{
        sender.imageView.transform=CGAffineTransformMakeRotation(-M_PI);
    }];
}
@end
