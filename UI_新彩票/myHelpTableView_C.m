//
//  myHelpTableView_C.m
//  UI_新彩票
//
//  Created by scuplt on 16-3-10.
//  Copyright (c) 2016年 itcast0413. All rights reserved.
//

#import "myHelpTableView_C.h"
#import "myHelp_Model.h"
#import "mySettingItem_Model.h"
#import "mySettingItem_ArrowModel.h"
#import "myHtmlTableView_C.h"
#import "mySetting_GroupModel.h"
#import "myNavigationViewController.h"
@interface myHelpTableView_C ()
@property (nonatomic,strong) NSMutableArray *arrHtmls;
@end

@implementation myHelpTableView_C

-(void)viewDidLoad{
    [super viewDidLoad];
    [self setDataGroup0];
    self.title=@"帮助";
}
-(NSMutableArray *)arrHtmls{
    if(_arrHtmls==nil){
        NSString *path=[[NSBundle mainBundle] pathForResource:@"help.json" ofType:nil];
        NSData *data=[NSData dataWithContentsOfFile:path];
        NSArray *dictArr=[NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:nil];
        NSMutableArray *htmlArrs=[NSMutableArray array];
        for (NSDictionary *dict in dictArr) {
            myHelp_Model *html=[myHelp_Model initInstance:dict];
            [htmlArrs addObject:html];
        }
        _arrHtmls=htmlArrs;
    }
    return _arrHtmls;
}


-(void)setDataGroup0{
    NSMutableArray *arrCache=[NSMutableArray array];
    for (int i=0; i<self.arrHtmls.count; i++) {
        myHelp_Model *htmlModel=self.arrHtmls[i];
        NSString *str=htmlModel.title;
        mySettingItem_Model *sign1=[mySettingItem_ArrowModel initData_icon:nil and_title:str and_vcClass:[  myHelp_Model class]];
        [arrCache addObject:sign1];
    }
    mySetting_GroupModel *group=[[mySetting_GroupModel alloc] init];
    group.arrSingData=arrCache;
    [self.dataModel addObject:group];
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    myHtmlTableView_C  *htmlVc=[[myHtmlTableView_C alloc ]init];
    htmlVc.html=self.arrHtmls[indexPath.row];
    
    myNavigationViewController *nav=[[myNavigationViewController alloc] initWithRootViewController:htmlVc];
    [self presentViewController:nav animated:YES completion:nil];
}

@end
