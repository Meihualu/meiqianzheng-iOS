//
//  CommodityListViewControllerSpec.m
//  MeiQianZheng
//
//  Created by msn on 16/7/15.
//  Copyright 2016年 ZYL. All rights reserved.
//

#import <Kiwi/Kiwi.h>
#import "CommodityListViewController.h"
#import "CommodityDetailViewController.h"


SPEC_BEGIN(CommodityListViewControllerSpec)

describe(@"CommodityListViewController", ^{
    context(@"when created", ^{
        
        it(@"should be exist the CommodityListViewController class", ^{
            [[[CommodityListViewController class] shouldNot] beNil];
        });
        
        it(@"should have a view", ^{
            CommodityListViewController * listController = [[CommodityListViewController alloc] init];
            [[listController.view shouldNot] beNil];
        });
    });
    
    /*
     PhotosViewController *photosViewController = [[PhotosViewController alloc] init];
     UIView *view = photosViewController.view;
     [[view shouldNot] beNil];
     
     UINavigationController *mockNavController = [UINavigationController mock];
     [photosViewController stub:@selector(navigationController) andReturn:mockNavController];
     
     [[mockNavController should] receive:@selector(pushViewController:animated:)];
     KWCaptureSpy *spy = [mockNavController captureArgument:@selector(pushViewController:animated:) atIndex:0];
     
     [photosViewController tableView:photosViewController.tableView didSelectRowAtIndexPath:[NSIndexPath indexPathForRow:0 inSection:0]];
     
     id obj = spy.argument;
     PhotoViewController *vc = obj;
     [[vc should] beKindOfClass:[PhotoViewController class]];
     [[vc.photo shouldNot] beNil];
     */
    /*
    context(@"when click a cell", ^{
        __block CommodityListViewController * listController = nil;
        beforeEach(^{
            listController = [[CommodityListViewController alloc] init];
        });
        
        it(@"a detail controller should be pushed", ^{
            UINavigationController * mockNavController = [UINavigationController mock];
            [listController stub:@selector(navigationController) andReturn:mockNavController];
            
            [[mockNavController should] receive:@selector(pushViewController:animated:)];
            KWCaptureSpy * spy = [mockNavController captureArgument:@selector(pushViewController:animated:) atIndex:0];
            
            NSIndexPath * indexPath = [NSIndexPath indexPathForRow:0 inSection:0];
            [listController tableView:listController.tableView didSelectRowAtIndexPath:indexPath];
            
            id obj = spy.argument;
            CommodityDetailViewController * detailController = obj;
            [[detailController should] beKindOfClass:[CommodityDetailViewController class]];
        });
    });
     */
});

SPEC_END
