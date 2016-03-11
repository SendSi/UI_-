//
//  myPushRemind_C.m
//  UI_新彩票
//
//  Created by scuplt on 16-3-9.
//  Copyright (c) 2016年 itcast0413. All rights reserved.
//

#import "myPushRemind_TableView_C.h"
#import "mySettingItem_ArrowModel.h"
#import "mySettingItem_Model.h"
#import "mySettingItem_SwitchModel.h"
#import "mySetting_TableVeiw_C.h"
#import "myNotiSendTVC.h"
#import "MBProgressHUD+MJ.h"
#import "myProduct_CollectionView_C.h"
#import "mySetting_GroupModel.h"
#import "mySettingItem_Model.h"

@interface myPushRemind_TableView_C ()
@end

@implementation myPushRemind_TableView_C

-(void)setDataGroup0{
        /*
         开奖号码推送
         中奖动画
         比分直播提醒
         购彩定时提醒
         */
        //多态的好外,,,,右边是 父类   左边是子类
        mySettingItem_Model *sign1=[mySettingItem_ArrowModel initData_icon:nil and_title:@"开奖号码推送" and_vcClass:[ myNotiSendTVC class]];
        mySettingItem_Model *sign2=[mySettingItem_SwitchModel initData_icon:nil and_title:@"中奖动画" ]   ;
        mySettingItem_Model *sign3=[mySettingItem_SwitchModel initData_icon:nil and_title:@"比分直播提醒" ];
        mySettingItem_Model *sign4=[mySettingItem_Model initData_icon:nil and_title:@"购彩定时提醒" ];
        
        mySetting_GroupModel *groupModel1=[[mySetting_GroupModel alloc]init];
        groupModel1.arrSingData=@[sign1,sign2,sign3 ,sign4];
    [self.dataModel addObject:groupModel1];
}

-(void)viewDidLoad{
    [super viewDidLoad];
    [self setDataGroup0];
    self.title=@"推送与提醒";
}



@end
