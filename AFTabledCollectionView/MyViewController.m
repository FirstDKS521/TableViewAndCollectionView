//
//  MyViewController.m
//  AFTabledCollectionView
//
//  Created by aDu on 2017/1/11.
//  Copyright © 2017年 Ash Furrow. All rights reserved.
//

#import "MyViewController.h"
#import "MyCollectionCell.h"
#import "FirstTableCell.h"
#import "MyViewCell.h"

#define K_Cell @"cell"
#define K_Coll @"coll"
@interface MyViewController ()

@property (nonatomic, strong) UITableView *tableView;
@end

@implementation MyViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"混合使用";
    self.view.backgroundColor = [UIColor whiteColor];
    self.navigationController.navigationBar.translucent = NO;
    
    [self.view addSubview:self.tableView];
}

#pragma mark - UITableViewDelegate

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 80;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 20;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.row % 2 == 0) {
        [tableView registerClass:[FirstTableCell class] forCellReuseIdentifier:K_Cell];
        FirstTableCell *firstCell = [tableView dequeueReusableCellWithIdentifier:K_Cell forIndexPath:indexPath];
        return firstCell;
    } else {
        [tableView registerClass:[MyViewCell class] forCellReuseIdentifier:K_Coll];
        MyViewCell *cell = [tableView dequeueReusableCellWithIdentifier:K_Coll forIndexPath:indexPath];
        cell.collectionView.delegate = self;
        cell.collectionView.dataSource = self;
        return cell;
    }
}

#pragma mark - UICollectionViewDelegate

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return 6;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(nonnull NSIndexPath *)indexPath
{
    MyCollectionCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:K_Coll forIndexPath:indexPath];
    return cell;
}

- (UITableView *)tableView
{
    if (!_tableView) {
        _tableView = [[UITableView alloc] initWithFrame:[UIScreen mainScreen].bounds style:UITableViewStylePlain];
        [_tableView registerClass:[MyViewCell class] forCellReuseIdentifier:K_Cell];
        _tableView.delegate = self;
        _tableView.dataSource = self;
    }
    return _tableView;
}

@end
