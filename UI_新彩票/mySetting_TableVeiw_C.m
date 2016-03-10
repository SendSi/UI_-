//
//  mySettingTableView.m
//  UI_新彩票
//
//  Created by scuplt on 16-3-6.
//  Copyright (c) 2016年 itcast0413. All rights reserved.
//

#import "mySetting_TableVeiw_C.h"
#import "mySetting_GroupModel.h"
#import "mySettingItem_Model.h"
#import "myNotiSendTVC.h"
#import  "mySetting_CellView.h"
#import "mySettingItem_ArrowModel.h"
#import "mySettingItem_SwitchModel.h"
#import "myNotiSendTVC.h"
#import "MBProgressHUD+MJ.h"
#import "myProduct_CollectionView_C.h"
@interface mySetting_TableVeiw_C ()
@property (nonatomic,strong) NSMutableArray *dataModel;
@end

@implementation mySetting_TableVeiw_C

- (void)viewDidLoad {
    [super viewDidLoad];
}
-(instancetype)init{
    return [super initWithStyle:UITableViewStyleGrouped];
}
-(instancetype)initWithStyle:(UITableViewStyle)style{
    return [super initWithStyle:UITableViewStyleGrouped];
}



#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return self.dataModel.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    mySetting_GroupModel *setModel=self.dataModel[section];
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
    
    mySetting_CellView *cell=[mySetting_CellView initInstance:tableView];
    mySetting_GroupModel *groupModel=self.dataModel[indexPath.section];
    cell.signModel  =groupModel.arrSingData[indexPath.row];
    return cell;
}

-(NSString *)tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section{
    mySetting_GroupModel *model=self.dataModel[section];
    return model.footer;
}

-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    mySetting_GroupModel *model=self.dataModel[section];
    return model.head;
}

-(void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    mySetting_GroupModel *model=self.dataModel[indexPath.section];
    mySettingItem_Model *sign=model.arrSingData[indexPath.row];
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    if(sign.option){
        sign.option();
    }
    else if([sign isKindOfClass:[mySettingItem_ArrowModel class]]){
        mySettingItem_ArrowModel *arrow=(mySettingItem_ArrowModel *)sign;
        if(arrow==nil)return;
        UIViewController *vc=[[sign.vcClass alloc ]init];
        vc.title=sign.title;
        [self.navigationController pushViewController:vc animated:YES];
    }
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
