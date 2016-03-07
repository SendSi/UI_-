//
//  mySettingSignModel.h
//  UI_新彩票
//
//  Created by scuplt on 16-3-7.
//  Copyright (c) 2016年 itcast0413. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface mySettingSignModel : NSObject

@property (copy,nonatomic) NSString *icon;
@property (copy,nonatomic) NSString *title;
@property (assign,nonatomic) Class vcClass;


+(instancetype) initData_icon:(NSString *)icon and_title:(NSString *)title and_vcClass:(Class )vc;


@end
