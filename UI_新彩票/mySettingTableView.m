//
//  mySettingTableView.m
//  UI_新彩票
//
//  Created by scuplt on 16-3-6.
//  Copyright (c) 2016年 itcast0413. All rights reserved.
//

#import "mySettingTableView.h"
#import "mySettingGroupModel.h"
#import "mySettingSignModel.h"
#import "myNotiSendTVC.h"
#import  "mySettingCell.h"
#import "mySettingSignArrowModel.h"
#import "mySettingSignSwitchModel.h"

@interface mySettingTableView ()
@property (nonatomic,strong) NSMutableArray *dataModel;
@end

@implementation mySettingTableView

- (void)viewDidLoad {
    [super viewDidLoad];
}
-(instancetype)init{
    return [super initWithStyle:UITableViewStyleGrouped];
}
-(instancetype)initWithStyle:(UITableViewStyle)style{
    return [super initWithStyle:UITableViewStyleGrouped];
}


-(NSMutableArray *)dataModel{
    if(_dataModel==nil){
        //        MorePush
        //        handShake
        //        sound_Effect  声音效果
        //        MoreUpdate 检查新版本
        //        MoreHelp  帮助
        mySettingSignModel *sign1=[mySettingSignArrowModel initData_icon:@"MorePush" and_title:@"推送与提醒" and_vcClass:[ myNotiSendTVC class]];
        mySettingSignModel *sign2=[mySettingSignSwitchModel initData_icon:@"handShake" and_title:@"摇一摇机选" and_vcClass:[ myNotiSendTVC class]];
        mySettingSignModel *sign3=[mySettingSignSwitchModel initData_icon:@"sound_Effect" and_title:@"声音效果" and_vcClass:[ myNotiSendTVC class]];
        mySettingSignModel *sign4=[mySettingSignArrowModel initData_icon:@"MoreUpdate" and_title:@"检查新版本" and_vcClass:[ myNotiSendTVC class]];
        mySettingSignModel *sign5=[mySettingSignArrowModel initData_icon:@"MoreHelp" and_title:@"帮助" and_vcClass:[ myNotiSendTVC class]];
        
        mySettingGroupModel *groupModel1=[[mySettingGroupModel alloc]init];
        groupModel1.arrSingData=@[sign1,sign2,sign3 ];
        mySettingGroupModel *groupModel2=[[mySettingGroupModel alloc]init];
        groupModel2.arrSingData=@[sign4,sign5];
        NSMutableArray *arrC=[NSMutableArray array];
        [arrC addObject:groupModel1];
        [arrC addObject:groupModel2];
        _dataModel=arrC;
    }
    return  _dataModel;
}



#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return self.dataModel.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    mySettingGroupModel *setModel=self.dataModel[section];
    return  setModel.arrSingData.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
//    NSString *ids=@"setting";
//    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:ids];
//    if(cell==nil) cell=[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:ids];
//    mySettingGroupModel *groupModel=self.dataModel[indexPath.section];
//    mySettingSignModel *signModel=groupModel.arrSingData[indexPath.row];
//    cell.imageView.image=[UIImage imageNamed:signModel.icon];
//    cell.textLabel.text=signModel.title;
    
    mySettingCell *cell=[mySettingCell initInstance:tableView];
    mySettingGroupModel *groupModel=self.dataModel[indexPath.section];
    cell.signModel  =groupModel.arrSingData[indexPath.row];
    return cell;
}

-(NSString *)tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section{
    mySettingGroupModel *model=self.dataModel[section];
    return model.footer;
}

-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    mySettingGroupModel *model=self.dataModel[section];
    return model.head;
}

-(void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath{
    
}


/*
 // Override to support conditional editing of the table view.
 - (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
 // Return NO if you do not want the specified item to be editable.
 return YES;
 }
 */

/*
 // Override to support editing the table view.
 - (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
 if (editingStyle == UITableViewCellEditingStyleDelete) {
 // Delete the row from the data source
 [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
 } else if (editingStyle == UITableViewCellEditingStyleInsert) {
 // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
 }
 }
 */

/*
 // Override to support rearranging the table view.
 - (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
 }
 */

/*
 // Override to support conditional rearranging of the table view.
 - (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
 // Return NO if you do not want the item to be re-orderable.
 return YES;
 }
 */

/*
 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 */

@end
