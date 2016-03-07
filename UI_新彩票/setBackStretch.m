//
//  setBackStretch.m
//  UI_新彩票
//
//  Created by scuplt on 16-3-4.
//  Copyright (c) 2016年 itcast0413. All rights reserved.
//

#import "setBackStretch.h"

@implementation setBackStretch
/** 一张背景的四周拉伸 */
+(UIImage *) setImageResizableImage:(NSString *)picName{
    UIImage *img=[UIImage imageNamed:picName];
    CGFloat w=img.size.width*0.5;
    CGFloat h=img.size.height*0.5;
   return  [img resizableImageWithCapInsets:UIEdgeInsetsMake(h, w, h, w)];
}
/** 一张背景的四周拉伸 stretch*/
+(UIImage *) setImageUseStretch:(NSString *)picName{
    UIImage *img=[UIImage imageNamed:picName];
    CGFloat w=img.size.width*0.5;
    CGFloat h=img.size.height*0.5;
    return  [img stretchableImageWithLeftCapWidth:w topCapHeight:h];
}
@end

