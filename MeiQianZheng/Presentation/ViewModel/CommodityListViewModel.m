//
//  CommodityCellModel.m
//  MeiQianZheng
//
//  Created by msn on 16/7/14.
//  Copyright © 2016年 ZYL. All rights reserved.
//

#import "CommodityListViewModel.h"
#import "CommodityModel.h"
#import "CommodityListCell.h"

@implementation CommodityListViewModel

- (NSMutableArray *)dataSource
{
    if (_dataSource == nil) {
        _dataSource = [NSMutableArray array];
    }
    return _dataSource;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self requestDataFromServer];
    }
    return self;
}

- (void) requestDataFromServer
{
    for (int i = 0; i < 20; i ++) {
        
        CommodityModel * item = [[CommodityModel alloc] initWithBarcode:[NSString stringWithFormat:@"mybarcode%zd",i]
                                                                   name:[NSString stringWithFormat:@"myname%zd",i]
                                                                   unit:[NSString stringWithFormat:@"myunit%zd",i]
                                                               category:[NSString stringWithFormat:@"mycategory%zd",i]
                                                            subCategory:[NSString stringWithFormat:@"mysubcategory%zd",i]
                                                                  price:100.0f];
        [self.dataSource addObject:item];
    }
}

- (NSInteger)numberOfSections
{
    return 1;
}

- (NSInteger)numberOfItemsInSection:(NSInteger)section
{
    return [_dataSource count];
}

- (CommodityListCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    CommodityListCell * cell = [CommodityListCell cellWithTableView:tableView];
    cell.model = _dataSource[indexPath.row];
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    CommodityListCell * cell = [self tableView:tableView cellForRowAtIndexPath:indexPath];
    return cell.cellHeight;
//    return 45.0f;
}

- (NSString *)titleForHeaderInSection:(NSInteger)section
{
    if (section == 0) {
        return @"第一组";
    }
    return @"第二组";
}

- (NSString *)titleForFooterInSection:(NSInteger)section
{
    return @"这是尾部标题";
}

@end
