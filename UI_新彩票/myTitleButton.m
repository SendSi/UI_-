//
//  myTitleButton.m
//  UI_新彩票
//
//  Created by scuplt on 16-3-3.
//  Copyright (c) 2016年 itcast0413. All rights reserved.
//

#import "myTitleButton.h"

@implementation myTitleButton

-(CGRect)titleRectForContentRect:(CGRect)contentRect{
    CGFloat y=0,h=contentRect.size.height;
    CGFloat x =0;
    CGSize sizes=CGSizeMake(MAXFLOAT, MAXFLOAT);
    NSDictionary *dic=@{NSFontAttributeName:[UIFont systemFontOfSize:24]};
    CGFloat w=[self.currentTitle boundingRectWithSize:sizes options:NSStringDrawingUsesLineFragmentOrigin attributes:dic context:nil].size.width;
    return CGRectMake(x, y, w, h);
}

-(CGRect)imageRectForContentRect:(CGRect)contentRect{
    CGFloat y=0,w=30,h=contentRect.size.height;
    CGFloat x =contentRect.size.width-w;
    return CGRectMake(x, y, w, h);
}

-(id)initWithCoder:(NSCoder *)aDecoder{
    if(self=[super initWithCoder:aDecoder]){
        self.imageView.contentMode=UIViewContentModeCenter;
    }
    return self;
}

@end
