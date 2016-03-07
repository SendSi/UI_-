//
//  mySettingSignModel.m
//  UI_新彩票
//
//  Created by scuplt on 16-3-7.
//  Copyright (c) 2016年 itcast0413. All rights reserved.
//

/** 每行的内容*/
#import "mySettingSignModel.h"
/** 每行的内容*/
@implementation mySettingSignModel

+(instancetype) initData_icon:(NSString *)icon and_title:(NSString *)title and_vcClass:(Class )vc{
   mySettingSignModel *mySign=[[self alloc]init];
    mySign.icon=icon;
    mySign.title=title;
    mySign.vcClass=vc;    
    return mySign;
}

@end
