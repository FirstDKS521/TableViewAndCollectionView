//
//  MyViewCell.m
//  AFTabledCollectionView
//
//  Created by aDu on 2017/1/11.
//  Copyright © 2017年 Ash Furrow. All rights reserved.
//

#import "MyViewCell.h"
#import "MyCollectionCell.h"

#define K_Coll @"coll"
#define Screen_Width [UIScreen mainScreen].bounds.size.width

@implementation MyViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
    
    // Configure the view for the selected state
}

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        self.backgroundColor = [UIColor orangeColor];
        [self addSubview:self.collectionView];
    }
    return self;
}

- (UICollectionView *)collectionView
{
    if (!_collectionView) {
        CGFloat width = (Screen_Width - 50) / 4;
        UICollectionViewFlowLayout * flowLayout = [[UICollectionViewFlowLayout alloc] init];
        //设置每个图片的大小
        flowLayout.itemSize = CGSizeMake(width, 60);
        //设置滚动方向的间距
//        flowLayout.minimumLineSpacing = 10;
//        //设置上方的反方向
//        flowLayout.minimumInteritemSpacing = 0;
        //设置collectionView整体的上左下右之间的间距
        flowLayout.sectionInset = UIEdgeInsetsMake(10, 10, 10, 10);
        //设置滚动方向
        flowLayout.scrollDirection = UICollectionViewScrollDirectionHorizontal;
        
        _collectionView = [[UICollectionView alloc] initWithFrame:CGRectMake(0, 0, Screen_Width, 80) collectionViewLayout:flowLayout];
        _collectionView.backgroundColor = [UIColor whiteColor];
        [_collectionView registerClass:[MyCollectionCell class] forCellWithReuseIdentifier:K_Coll];
    }
    return _collectionView;
}

@end
