//
//  mySettingGroupModel.h
//  UI_新彩票
//
//  Created by scuplt on 16-3-7.
//  Copyright (c) 2016年 itcast0413. All rights reserved.
//
/** 组的model 包含了 头部 尾部 中间 */
#import <Foundation/Foundation.h>

@interface mySetting_GroupModel : NSObject
/** 尾部 */
@property (copy,nonatomic) NSString * footer;

/** 头部 */
@property (copy,nonatomic) NSString *head;

@property (strong,nonatomic) NSArray *arrSingData;


@end
