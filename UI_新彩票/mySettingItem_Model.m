//
//  mySettingSignModel.m
//  UI_新彩票
//
//  Created by scuplt on 16-3-7.
//  Copyright (c) 2016年 itcast0413. All rights reserved.
//

/** 每行的内容*/
#import "mySettingItem_Model.h"
/** 每行的内容*/
@implementation mySettingItem_Model



+(instancetype) initData_icon:(NSString *)icon and_title:(NSString *)title {
    mySettingItem_Model *mySign=[[self alloc]init];
    mySign.icon=icon;
    mySign.title=title;
    return mySign;
}
@end
