//
//  mySettingCell.h
//  UI_新彩票
//
//  Created by scuplt on 16-3-7.
//  Copyright (c) 2016年 itcast0413. All rights reserved.
//

#import <UIKit/UIKit.h>
@class  mySettingSignModel;
@interface mySettingCell : UITableViewCell

@property (strong,nonatomic) mySettingSignModel *signModel;

+(instancetype)initInstance:(UITableView *)tableView;

@end
