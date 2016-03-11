//
//  myHtmlTableView_C.m
//  UI_新彩票
//
//  Created by scuplt on 16-3-10.
//  Copyright (c) 2016年 itcast0413. All rights reserved.
//

#import "myHtmlTableView_C.h"
#import "myHelp_Model.h"

@interface myHtmlTableView_C ()<UIWebViewDelegate>
@property (nonatomic,strong) NSMutableArray *arrHtmlData;
@end

@implementation myHtmlTableView_C
-(void)loadView{
    self.view=[[UIWebView alloc ]init];
}
-(void)viewDidLoad{
    [super viewDidLoad];
    UIWebView *webView=(UIWebView *)self.view;//把其强转为 网页形式
    NSURL *urls=[[NSBundle mainBundle] URLForResource:self.html.html withExtension:nil];
 NSURLRequest *request=   [NSURLRequest requestWithURL:urls];
    self.title=self.html.title;
    webView.delegate=self;//实现代理
    [webView loadRequest:request];
    self.navigationItem.leftBarButtonItem=[[UIBarButtonItem alloc] initWithTitle:@"关闭" style:UIBarButtonItemStylePlain target:self action:@selector(closePanel)];
}
-(void)closePanel{
    [self dismissViewControllerAnimated:YES completion:nil];
}
/* 网页加载完成的时调用  */
-(void)webViewDidFinishLoad:(UIWebView *)webView{
    //跳到目标
  NSString *js=  [NSString stringWithFormat:@"window.location.href='#%@';",self.html.ID];
    [webView stringByEvaluatingJavaScriptFromString:js];
}
@end
