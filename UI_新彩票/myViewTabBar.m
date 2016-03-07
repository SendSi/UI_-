//
//  myViewTabBar.m
//  UI_新彩票
//
//  Created by scuplt on 16-3-2.
//  Copyright (c) 2016年 itcast0413. All rights reserved.
//

#import "myViewTabBar.h"
#import "myButton.h"
@interface myViewTabBar()
@property (weak,nonatomic) myButton *tmpButton;
@end

@implementation myViewTabBar

-(void)AddButtonOneFrom:(NSString *)nor andSel:(NSString *)sel{
    myButton *myBtn=[[myButton alloc] init];
    [myBtn setBackgroundImage:[UIImage imageNamed:nor] forState:UIControlStateNormal];
    [myBtn setBackgroundImage:[UIImage imageNamed:sel] forState:UIControlStateSelected];
    
    [myBtn addTarget:self action:@selector(ClickMyButton:) forControlEvents:UIControlEventTouchDown];
    

    
    [self addSubview:myBtn];
    
    if(self.subviews.count==1)
        [self ClickMyButton:myBtn];
}
-(void)layoutSubviews{
    [super layoutSubviews];
    int counts=self.subviews.count;
   
    CGFloat x,y=0,w=self.frame.size.width / counts,h=self.frame.size.height;
    for(int i=0;i<counts;i++){
        myButton *myBtn=self.subviews[i];
        myBtn.tag=i;
        x=i*w;
        myBtn.frame=CGRectMake(x, y, w, h);
        //NSLogs(@"%f",x);
    }
}
-(void)ClickMyButton:(myButton *)btn{
    if([self.delegate respondsToSelector:@selector(viewTabBarClick:andFrom:andTO:)])
    {
        [self.delegate viewTabBarClick:self andFrom:self.tmpButton.tag andTO:btn.tag];
    }
    self.tmpButton.selected=NO;
    btn.selected=YES;
    self.tmpButton=btn;
}
@end












