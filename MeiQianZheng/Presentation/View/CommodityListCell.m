//
//  CommodityListCell.m
//  MeiQianZheng
//
//  Created by msn on 16/7/14.
//  Copyright © 2016年 ZYL. All rights reserved.
//

#import "CommodityListCell.h"
const CGFloat kMargin = 10.0f;

@interface CommodityListCell()

@property (nonatomic,strong) UILabel * nameLabel;
@property (nonatomic,strong) UILabel * categoryLabel;
@property (nonatomic,strong) UILabel * priceLabel;

@end

@implementation CommodityListCell

+ (instancetype)cellWithTableView:(UITableView *)tableView
{
    static NSString * identifier = @"CommodityListCell";
    CommodityListCell * cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    if (cell == nil) {
        cell = [[CommodityListCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    }
    return cell;
}

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        [self addElements];
        _cellHeight = 45.0f;
    }
    return self;
}

- (void)addElements{
    CGFloat labelWidth = (KScreenWidth - kMargin * 2) / 3;
    _nameLabel = [self labelWithRect:CGRectMake(kMargin, 0, labelWidth, _cellHeight)];
    _categoryLabel = [self labelWithRect:CGRectMake(CGRectGetMaxX(_nameLabel.frame), 0, labelWidth, _cellHeight)];
    _priceLabel = [self labelWithRect:CGRectMake(CGRectGetMaxX(_categoryLabel.frame), 0, labelWidth, _cellHeight)];
}

- (UILabel *)labelWithRect:(CGRect) frame
{
    UILabel * label = [[UILabel alloc] initWithFrame:frame];
    label.font = [UIFont boldSystemFontOfSize:14.0f];
    label.textAlignment = NSTextAlignmentCenter;
    [self.contentView addSubview:label];
    return label;
}

- (void)setModel:(CommodityModel *)model
{
    _model = model;
    [_nameLabel setText:model.name];
    [_categoryLabel setText:model.category];
    [_priceLabel setText:[NSString stringWithFormat:@"%.02f/%@",model.price,model.unit]];
}

@end
