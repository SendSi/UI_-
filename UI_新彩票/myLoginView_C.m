//
//  myLoginViewController.m
//  UI_新彩票
//
//  Created by scuplt on 16-3-4.
//  Copyright (c) 2016年 itcast0413. All rights reserved.
//

#import "myLoginView_C.h"
#import "mySetting_C.h"
#import "myPushRemind_TableView_C.h"
@interface myLoginView_C ()
@property (weak, nonatomic) IBOutlet UIButton *myQuit;
- (IBAction)ClickMySetting:(id)sender;

@end

@implementation myLoginView_C

- (void)viewDidLoad {
    [super viewDidLoad];
    //控钮背景拉伸
    UIImage *norm=[UIImage imageNamed:@"RedButton"];
    UIImage *high=[UIImage imageNamed:@"RedButtonPress"];
    
    norm=  [norm resizableImageWithCapInsets:UIEdgeInsetsMake( norm.size.width*0.5, norm.size.height*0.5,  norm.size.width*0.5, norm.size.height*0.5)];
    high=[high resizableImageWithCapInsets:UIEdgeInsetsMake(high.size.width*0.5, high.size.height*0.5,  high.size.width*0.5, high.size.height*0.5)];
    [self.myQuit setBackgroundImage:norm forState:UIControlStateNormal];
    [self.myQuit setBackgroundImage:high forState:UIControlStateHighlighted];
}

- (IBAction)ClickMySetting:(id)sender {
    mySetting_C *set=[[mySetting_C alloc] init];
    [self.navigationController pushViewController:set animated:YES];
    
//    myPushRemind_TableView_C *set=[[myPushRemind_TableView_C alloc] init];
// [self.navigationController pushViewController:set animated:YES];
}
@end
