#import "myNavigationViewController.h"

@interface myNavigationViewController ()

@end

@implementation myNavigationViewController

- (void)viewDidLoad {
    [super viewDidLoad];

}

+(void)initialize{
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
    dic[NSForegroundColorAttributeName]=[UIColor whiteColor];
    dic[NSFontAttributeName]=[UIFont systemFontOfSize:16];
    [navItem setTitleTextAttributes:dic forState:UIControlStateNormal];
    [navItem setBackgroundImage:[UIImage imageNamed:@"NavButton"] forState:UIControlStateNormal barMetrics:    UIBarMetricsDefault];
    [navItem setBackButtonBackgroundImage:[UIImage imageNamed:@"NavButtonPress"] forState:UIControlStateNormal barMetrics:    UIBarMetricsDefault];
}

-(void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated{
    viewController.hidesBottomBarWhenPushed=YES;
    [super pushViewController:viewController animated:animated];
}

@end
