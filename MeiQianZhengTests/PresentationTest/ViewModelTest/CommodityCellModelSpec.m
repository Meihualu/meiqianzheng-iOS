//
//  CommodityCellModelTestSpec.m
//  MeiQianZheng
//
//  Created by msn on 16/7/14.
//  Copyright 2016年 ZYL. All rights reserved.
//

#import <Kiwi/Kiwi.h>
#import "CommodityListViewModel.h"
#import "CommodityListCell.h"

SPEC_BEGIN(CommodityCellModelSpec)

describe(@"CommodityListViewModel", ^{
    context(@"when created", ^{
        __block CommodityListViewModel * model = nil;
        __block UITableView * mockTable = nil;
        __block CommodityListCell * cell = nil;
        __block NSIndexPath* indexPath = nil;
        
        beforeEach(^{
            model = [[CommodityListViewModel alloc] init];
            mockTable = [UITableView mock];
            cell = [[CommodityListCell alloc] init];
            indexPath = [NSIndexPath indexPathForRow:0 inSection:0];
        });
        
        afterEach(^{
            model = nil;
            mockTable = nil;
            cell = nil;
            indexPath = nil;
        });
        
        it(@"should have the class CommodityListViewModel", ^{
            [[[CommodityListViewModel class] shouldNot] beNil];
        });
        
        it(@"should exist", ^{
            [[model shouldNot] beNil];
        });
        
        it(@"should can be lazy init ", ^{
            [[model.dataSource shouldNot] beNil];
        });
        
        it(@"the dataSource should be inited  through the request to server", ^{
            [[model.dataSource shouldNot] beNil];
            [[theValue([model.dataSource count]) shouldNot] equal:theValue(0)];
        });
        
        /*
         - (NSString *)titleForHeaderInSection:(NSInteger)section;
         - (NSString *)titleForFooterInSection:(NSInteger)section;
         - (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath;
         */
        
        it(@"should can return the numberOfSections and ", ^{
            [[theValue([model numberOfSections]) should] equal:theValue(1)];
        });
        
        it(@"should can return the numberOfItemsInSection", ^{
            [[theValue([model numberOfItemsInSection:0]) should] equal:theValue([model.dataSource count])];
        });
        
        it(@"should can return cell for row at indexPath", ^{
            static NSString * identifier = @"CommodityListCell";
            [[mockTable should] receive:@selector(dequeueReusableCellWithIdentifier:) andReturn:cell withArguments:identifier];
            id result =  [model tableView:mockTable cellForRowAtIndexPath:indexPath];
            [[result should] equal:cell];
        });
        
        it(@"should return the height for row at indexPath", ^{
            UITableView * table = [[UITableView alloc] init];
            CommodityListCell * cell = [model tableView:table cellForRowAtIndexPath:indexPath];
            CGFloat height = [model tableView:table heightForRowAtIndexPath:indexPath];
            [[theValue(height) should] equal:theValue(cell.cellHeight)];
        });
        
        
    });
});

SPEC_END
