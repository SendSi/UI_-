//
//  mySettingSignArrowModel.m
//  UI_新彩票
//
//  Created by scuplt on 16-3-7.
//  Copyright (c) 2016年 itcast0413. All rights reserved.
//

#import "mySettingItem_ArrowModel.h"
/** 箭头行 */
@implementation mySettingItem_ArrowModel
+(instancetype) initData_icon:(NSString *)icon and_title:(NSString *)title and_vcClass:(Class )vc{
    mySettingItem_ArrowModel *mySign=[mySettingItem_ArrowModel initData_icon:icon and_title:title];
    mySign.vcClass=vc;
    return mySign;
}
@end
