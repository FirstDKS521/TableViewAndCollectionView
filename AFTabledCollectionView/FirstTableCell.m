//
//  FirstTableCell.m
//  AFTabledCollectionView
//
//  Created by aDu on 2017/1/12.
//  Copyright © 2017年 Ash Furrow. All rights reserved.
//

#import "FirstTableCell.h"

@implementation FirstTableCell

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
        
    }
    return self;
}

@end
