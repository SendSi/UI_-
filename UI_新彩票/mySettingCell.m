//
//  mySettingCell.m
//  UI_新彩票
//
//  Created by scuplt on 16-3-7.
//  Copyright (c) 2016年 itcast0413. All rights reserved.
//

#import "mySettingCell.h"
#import "mySettingGroupModel.h"
#import "mySettingSignModel.h"
#import "mySettingSignArrowModel.h"
#import "mySettingSignSwitchModel.h"

@interface mySettingCell()
/**  箭头   *///需重写,懒加载
@property (nonatomic,strong) UIImageView *rightArrowVIew;
/**  开关   *///需重写,懒加载
@property (nonatomic,strong) UISwitch *rightSwitchView;

@end


@implementation mySettingCell

-(UIImageView *)rightArrowVIew{
    if(_rightArrowVIew==nil){
        _rightArrowVIew=[[UIImageView alloc ]initWithImage:[UIImage imageNamed:@"CellArrow"]];
    }
    return _rightArrowVIew;
}
-(UISwitch *)rightSwitchView{
    if(_rightSwitchView==nil){
        _rightSwitchView=[[UISwitch alloc] init];
    }
    return _rightSwitchView;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
}

-(void)setSignModel:(mySettingSignModel *)signModel{
    _signModel=signModel;
    self.textLabel.text=signModel.title;
    self.imageView.image=[UIImage imageNamed: signModel.icon ];//以上设置左边
    
    //设置右边
    if([self.signModel isKindOfClass:[mySettingSignArrowModel class]]){
        self.accessoryView=[[UIImageView alloc]initWithImage:[ UIImage imageNamed:@"CellArrow"]];
    }
    else if([self.signModel isKindOfClass:[mySettingSignSwitchModel class]])
    {
        self.accessoryView=[[UISwitch alloc]init];
    }
    else{
        self.accessoryView=nil;
    }
}
+(instancetype)initInstance:(UITableView *)tableView{
static NSString *ids=@"setting";
    mySettingCell *cell=[tableView dequeueReusableCellWithIdentifier:ids];
    if (cell==nil) {
        cell=[[mySettingCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:ids];
    }
    return cell;
}

@end
