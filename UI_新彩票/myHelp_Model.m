//
//  myHtml_Model.m
//  UI_新彩票
//
//  Created by scuplt on 16-3-10.
//  Copyright (c) 2016年 itcast0413. All rights reserved.
//

#import "myHelp_Model.h"

@implementation myHelp_Model

-(instancetype)initModels:(NSDictionary *)dict{
    if(self=[super init]){
        self.ID=dict[@"id"];
        self.title=dict[@"title"];
        self.html=dict[@"html"];
    }
    return self;
}
+(instancetype)initInstance:(NSDictionary *)dict{
    return [[self alloc] initModels:dict];
}

@end
