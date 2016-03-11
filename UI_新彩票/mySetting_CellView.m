//
//  mySettingCell.m
//  UI_新彩票
//
//  Created by scuplt on 16-3-7.
//  Copyright (c) 2016年 itcast0413. All rights reserved.
//

#import "mySetting_CellView.h"
#import "mySetting_GroupModel.h"
#import "mySettingItem_Model.h"
#import "mySettingItem_ArrowModel.h"
#import "mySettingItem_SwitchModel.h"

@interface mySetting_CellView()
/**  箭头   *///需重写,懒加载
@property (nonatomic,strong) UIImageView *rightArrowVIew;
/**  开关   *///需重写,懒加载
@property (nonatomic,strong) UISwitch *rightSwitchView;

@end


@implementation mySetting_CellView
/**  箭头   */
-(UIImageView *)rightArrowVIew{
    if(_rightArrowVIew==nil){
        _rightArrowVIew=[[UIImageView alloc ]initWithImage:[UIImage imageNamed:@"CellArrow"]];
    }
    return _rightArrowVIew;
}
/**  开关   */
-(UISwitch *)rightSwitchView{
    if(_rightSwitchView==nil){
        _rightSwitchView=[[UISwitch alloc] init];
    }
    return _rightSwitchView;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
}

-(void)setSignModel:(mySettingItem_Model *)signModel{
    _signModel=signModel;
    self.textLabel.text=signModel.title;
    if(signModel.icon!=nil)
    self.imageView.image=[UIImage imageNamed: signModel.icon ];//以上设置左边
    
    //设置右边
    if([self.signModel isKindOfClass:[mySettingItem_ArrowModel class]]){
        self.accessoryView=self.rightArrowVIew;
    }
    else if([self.signModel isKindOfClass:[mySettingItem_SwitchModel class]])
    {
        self.accessoryView=self.rightSwitchView;
        self.selectionStyle=UITableViewCellSelectionStyleNone;//点击,使其没反应
    }
    else{
        self.accessoryView=nil;
    }
}
+(instancetype)initInstance:(UITableView *)tableView{
static NSString *ids=@"setting";
    mySetting_CellView *cell=[tableView dequeueReusableCellWithIdentifier:ids];
    if (cell==nil) {
        cell=[[mySetting_CellView alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:ids];
    }
    return cell;
}

@end
