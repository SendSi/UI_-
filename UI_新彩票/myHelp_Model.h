//
//  myHtml_Model.h
//  UI_新彩票
//
//  Created by scuplt on 16-3-10.
//  Copyright (c) 2016年 itcast0413. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface myHelp_Model : NSObject
/** 标题 */
@property (copy,nonatomic) NSString *title;
/** 文件 */
@property (copy,nonatomic) NSString *html;
/** 定位到 */
@property (copy,nonatomic) NSString *ID;

-(instancetype)initModels:(NSDictionary *)dict;
+(instancetype)initInstance:(NSDictionary *)dict;

@end
