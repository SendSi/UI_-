//
//  mySetting_C.m
//  UI_新彩票
//
//  Created by scuplt on 16-3-9.
//  Copyright (c) 2016年 itcast0413. All rights reserved.
//

#import "mySetting_C.h"
#import "mySettingItem_ArrowModel.h"
#import "mySettingItem_Model.h"
#import "mySettingItem_SwitchModel.h"
#import "mySetting_TableVeiw_C.h"
#import "myNotiSendTVC.h"
#import "MBProgressHUD+MJ.h"
#import "myProduct_CollectionView_C.h"
#import "mySetting_GroupModel.h"
#import "myPushRemind_TableView_C.h"
#import "myHelpTableView_C.h"
@interface mySetting_C ()
@end

@implementation mySetting_C
-(void)viewDidLoad{
    [super viewDidLoad];
    [self setDataGroup0];
    self.title=@"设置";

}

-(void)setDataGroup0{
        //        MorePush
        //        handShake
        //        sound_Effect  声音效果
        //        MoreUpdate 检查新版本
        //        MoreHelp  帮助
        //分享
        //查看消息
        //产品推推荐
        //关于
        //多态的好外,,,,右边是 父类   左边是子类
        mySettingItem_Model *sign1=[mySettingItem_ArrowModel initData_icon:@"MorePush" and_title:@"推送与提醒" and_vcClass:[  myPushRemind_TableView_C class]];
        mySettingItem_Model *sign2=[mySettingItem_SwitchModel initData_icon:@"handShake" and_title:@"摇一摇机选" ]   ;     mySettingItem_Model *sign3=[mySettingItem_SwitchModel initData_icon:@"sound_Effect" and_title:@"声音效果" ];        mySettingItem_Model *sign4=[mySettingItem_Model initData_icon:@"MoreUpdate" and_title:@"检查新版本" ];
        sign4.option=^(){
            [MBProgressHUD showMessage:@"正在检查中..."];
            dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
                [MBProgressHUD hideHUD];
                [MBProgressHUD showError:@"当前已是最新版本"];
            });
        };

        
        mySettingItem_Model *sign5=[mySettingItem_ArrowModel initData_icon:@"MoreHelp" and_title:@"帮助" and_vcClass:[ myHelpTableView_C class]];
        mySettingItem_Model *sign6=[mySettingItem_ArrowModel initData_icon:@"MoreHelp" and_title:@"分享" and_vcClass:[ myNotiSendTVC class]];
        mySettingItem_Model *sign7=[mySettingItem_ArrowModel initData_icon:@"MoreHelp" and_title:@"查看消息" and_vcClass:[ myNotiSendTVC class]];
        mySettingItem_Model *sign8=[mySettingItem_ArrowModel initData_icon:@"MoreHelp" and_title:@"产品推推荐" and_vcClass:[ myProduct_CollectionView_C class]];
        mySettingItem_Model *sign9=[mySettingItem_ArrowModel initData_icon:@"MoreHelp" and_title:@"关于" and_vcClass:[ myNotiSendTVC class]];
        
        mySetting_GroupModel *groupModel1=[[mySetting_GroupModel alloc]init];
        groupModel1.arrSingData=@[sign1,sign2,sign3 ];
        mySetting_GroupModel *groupModel2=[[mySetting_GroupModel alloc]init];
        groupModel2.arrSingData=@[sign4,sign5,sign6,sign7,sign8,sign9];

    [self.dataModel addObject:groupModel1];
    [self.dataModel addObject:groupModel2];
}


@end
