//
//  mySettingSignModel.h
//  UI_新彩票
//
//  Created by scuplt on 16-3-7.
//  Copyright (c) 2016年 itcast0413. All rights reserved.
//

#import <Foundation/Foundation.h>
typedef void(^updataOption) ();
/** Item父类 行的样式 */
@interface mySettingItem_Model : NSObject

@property (copy,nonatomic) NSString *icon;
@property (copy,nonatomic) NSString *title;
@property (assign,nonatomic) Class vcClass;

@property (copy,nonatomic) updataOption option;

/** 图标 文字 */
+(instancetype) initData_icon:(NSString *)icon and_title:(NSString *)title ;
@end
