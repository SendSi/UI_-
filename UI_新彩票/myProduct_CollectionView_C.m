#import "myProduct_CollectionView_C.h"
#import "myProduct_Model.h"
#import "myProduct_CollectionCell_V.h"
@interface myProduct_CollectionView_C ()
@property (nonatomic,strong) NSArray *arrProduct;
@end

@implementation myProduct_CollectionView_C

static NSString * const reuseIdentifier = @"Cell";

- (void)viewDidLoad {
    [super viewDidLoad];
    self.collectionView.backgroundColor=[UIColor whiteColor];
    // Uncomment the following line to preserve selection between presentations
    // self.clearsSelectionOnViewWillAppear = NO;
    // Register cell classes
    //[self.collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:reuseIdentifier];
    UINib *nib=[UINib nibWithNibName:@"myProduct_CollectionCell_V" bundle:nil];
    [self.collectionView registerNib:nib forCellWithReuseIdentifier:reuseIdentifier];
}
-(NSArray *)arrProduct{
    if(_arrProduct ==nil){
        NSString *path=[[NSBundle mainBundle] pathForResource:@"products.json" ofType:nil];
        NSData *data=[NSData dataWithContentsOfFile:path];
        NSArray *dictarr=[NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableContainers error:nil];
        NSMutableArray *productArray=[NSMutableArray array];
        for(NSDictionary *dict in dictarr){
            myProduct_Model *p=[myProduct_Model productWithDict:dict];
            [productArray addObject:p];
        }
        _arrProduct=productArray;
    }
    return _arrProduct;
}



-(instancetype)init{
    UICollectionViewFlowLayout *layouts=[[UICollectionViewFlowLayout alloc] init];
    layouts.itemSize=CGSizeMake(80, 80);
    layouts.minimumInteritemSpacing=0;
    layouts.minimumLineSpacing=10;
    layouts.sectionInset=UIEdgeInsetsMake(20,0, 0, 0);
    return  [super initWithCollectionViewLayout:layouts];
}

-(NSInteger) numberOfSectionsInCollectionView:(UICollectionView *)collectionView{
    return 1;
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return  self.arrProduct.count;
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
        //    UICollectionViewCell *cell=[collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];//看viewdidLoad中的,加载的 字符串
    //    cell.backgroundColor=[UIColor redColor];
    myProduct_CollectionCell_V *cell=[collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];//看viewdidLoad中的,加载的 字符串
    cell.myProductModel=self.arrProduct[indexPath.item];
    return cell;
}

-(void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath{
    myProduct_Model *p=self.arrProduct[indexPath.item];
    NSLogs(@"点击了%@",p.title);
}
@end













