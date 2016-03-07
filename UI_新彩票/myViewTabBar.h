//
//  myViewTabBar.h
//  UI_新彩票
//
//  Created by scuplt on 16-3-2.
//  Copyright (c) 2016年 itcast0413. All rights reserved.
//

#import <UIKit/UIKit.h>
@class  myViewTabBar;
@protocol myViewTabBarDelegate<NSObject>
@optional
-(void)viewTabBarClick:(myViewTabBar *) views andFrom:(int) froms andTO:(int )tos;

@end


@interface myViewTabBar : UIView

@property (nonatomic,weak) id<myViewTabBarDelegate> delegate;
-(void)AddButtonOneFrom:(NSString *)nor andSel:(NSString *)sel;



@end
