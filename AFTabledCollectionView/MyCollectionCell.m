//
//  MyCollectionCell.m
//  AFTabledCollectionView
//
//  Created by aDu on 2017/1/11.
//  Copyright © 2017年 Ash Furrow. All rights reserved.
//

#import "MyCollectionCell.h"

@implementation MyCollectionCell

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor colorWithRed:arc4random() % 256 / 255.0 green:arc4random() % 256 / 255.0 blue:arc4random() % 256 / 255.0 alpha:1.0];
    }
    return self;
}

@end
