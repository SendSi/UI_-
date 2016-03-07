//
//  myLoginViewController.m
//  UI_新彩票
//
//  Created by scuplt on 16-3-4.
//  Copyright (c) 2016年 itcast0413. All rights reserved.
//

#import "myLoginViewController.h"

@interface myLoginViewController ()
@property (weak, nonatomic) IBOutlet UIButton *myQuit;
- (IBAction)ClickMySetting:(id)sender;

@end

@implementation myLoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //控钮背景拉伸
    UIImage *norm=[UIImage imageNamed:@"RedButton"];
    UIImage *high=[UIImage imageNamed:@"RedButtonPress"];
    
    //norm=[norm stretchableImageWithLeftCapWidth:norm.size.width*0.5 topCapHeight:norm.size.height*0.5];
   // high=[high stretchableImageWithLeftCapWidth:high.size.width*0.5 topCapHeight:high.size.height*0.5];
    norm=  [norm resizableImageWithCapInsets:UIEdgeInsetsMake( norm.size.width*0.5, norm.size.height*0.5,  norm.size.width*0.5, norm.size.height*0.5)];
    high=[high resizableImageWithCapInsets:UIEdgeInsetsMake(high.size.width*0.5, high.size.height*0.5,  high.size.width*0.5, high.size.height*0.5)];
    [self.myQuit setBackgroundImage:norm forState:UIControlStateNormal];
    [self.myQuit setBackgroundImage:high forState:UIControlStateHighlighted];
}

- (IBAction)ClickMySetting:(id)sender {
}
@end
