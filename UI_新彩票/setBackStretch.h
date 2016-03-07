//
//  setBackStretch.h
//  UI_新彩票
//
//  Created by scuplt on 16-3-4.
//  Copyright (c) 2016年 itcast0413. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface setBackStretch : UIImage
/** 一张背景的四周拉伸 */
+(UIImage *) setImageResizableImage:(NSString *)picName;

/** 一张背景的四周拉伸 stretch*/
+(UIImage *) setImageUseStretch:(NSString *)picName;
@end
