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
@implementation mySettingCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

-(void)setSignModel:(mySettingSignModel *)signModel{
    _signModel=signModel;
    self.textLabel.text=signModel.title;
    self.imageView.image=[UIImage imageNamed: signModel.icon ];
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
