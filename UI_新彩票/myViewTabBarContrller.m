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
    //全局导航的头部样式 img
    UINavigationBar *navb=[UINavigationBar appearance];
    if(iOS7){
    [navb setBackgroundImage:[UIImage imageNamed:@"NavBar64"] forBarMetrics:UIBarMetricsDefault];
    }
    else{
            [navb setBackgroundImage:[UIImage imageNamed:@"NavBar"] forBarMetrics:UIBarMetricsDefault];
    }
    //设置头部 字体颜色与大小
    NSMutableDictionary *attr=[NSMutableDictionary dictionary];
    attr[NSForegroundColorAttributeName]=[UIColor whiteColor];
    attr[NSFontAttributeName]=[UIFont systemFontOfSize:20];
    [navb setTitleTextAttributes:attr];
    
    UIBarButtonItem     *navItem=[UIBarButtonItem appearance];
NSMutableDictionary *dic=    [NSMutableDictionary dictionary];
    dic[NSForegroundColorAttributeName]=[UIColor grayColor];
    dic[NSFontAttributeName]=[UIFont systemFontOfSize:16];
    [navItem setTitleTextAttributes:dic forState:UIControlStateNormal];
    [navItem setBackgroundImage:[UIImage imageNamed:@"NavButton"] forState:UIControlStateNormal barMetrics:    UIBarMetricsDefault];
      [navItem setBackButtonBackgroundImage:[UIImage imageNamed:@"NavButton"] forState:UIControlStateNormal barMetrics:    UIBarMetricsDefault];
   // navItem setBackButtonBackgroundImage:<#(UIImage *)#> forState:<#(UIControlState)#> barMetrics:<#(UIBarMetrics)#>
}

#pragma mark 代理
-(void)viewTabBarClick:(myViewTabBar *)views andFrom:(int)froms andTO:(int)tos{
    //NSLogs(@"%d9---%d",froms,tos);
    self.selectedIndex=tos;
}


@end
