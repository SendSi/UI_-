//
//  myProductCollectionCell.m
//  UI_新彩票
//
//  Created by scuplt on 16-3-8.
//  Copyright (c) 2016年 itcast0413. All rights reserved.
//

#import "myProduct_CollectionCell_V.h"
#import "myProduct_Model.h"
@interface myProduct_CollectionCell_V()
@property (weak, nonatomic) IBOutlet UIImageView *iconViews;
@property (weak, nonatomic) IBOutlet UILabel *titleLbl;

@end


@implementation myProduct_CollectionCell_V

- (void)awakeFromNib {
    self.iconViews.layer.cornerRadius=8;
    self.iconViews.clipsToBounds=YES;
}

-(void)setMyProductModel:(myProduct_Model *)myProductModel{
    _myProductModel=myProductModel;
    self.iconViews.image=[UIImage imageNamed:myProductModel.icon];
    self.titleLbl.text=myProductModel.title;
}

@end
