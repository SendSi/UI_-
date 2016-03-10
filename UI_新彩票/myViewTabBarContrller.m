//
//  myViewTabBarContrller.m
//  UI_新彩票
//
//  Created by scuplt on 16-3-2.
//  Copyright (c) 2016年 itcast0413. All rights reserved.
//

#import "myViewTabBarContrller.h"
#import "myViewTabBar.h"
@interface myViewTabBarContrller ()<myViewTabBarDelegate>

@end

@implementation myViewTabBarContrller

- (void)viewDidLoad {
    [super viewDidLoad];
    
    myViewTabBar *myview=[[myViewTabBar alloc] init];
    myview.backgroundColor=[UIColor redColor];
    myview.frame=self.tabBar.bounds;
    myview.delegate=self;
    [self.tabBar addSubview:myview];
    
    for (int i=0; i<self.viewControllers.count; i++) {
       NSString *nor= [NSString stringWithFormat:@"TabBar%d",i+1];
         NSString *sel  = [NSString stringWithFormat:@"TabBar%dSel",i+1];
        [myview AddButtonOneFrom:nor andSel:sel];
    }
    // navItem setBackButtonBackgroundImage:<#(UIImage *)#> forState:<#(UIControlState)#> barMetrics:<#(UIBarMetrics)#>
}

/**
 *  重写这个方法,能拦截所有的push操作
 *
 */
//- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated
//{
//    viewController.hidesBottomBarWhenPushed = YES;
//    [super pushViewController:viewController animated:animated];
//}

#pragma mark 代理
-(void)viewTabBarClick:(myViewTabBar *)views andFrom:(int)froms andTO:(int)tos{
    //NSLogs(@"%d9---%d",froms,tos);
    self.selectedIndex=tos;
}



@end
