//
//  CommodityItem.m
//  ThoughtWorks
//
//  Created by msn on 16/5/25.
//  Copyright © 2016年 ZYL. All rights reserved.
//

#import "CommodityModel.h"

@implementation CommodityModel

-(instancetype)initWithBarcode:(NSString *)barcode name:(NSString *)name unit:(NSString *)unit category:(NSString *)category subCategory:(NSString *)subCategory price:(CGFloat)price{
    if (self = [super init]) {
        _barcode = [barcode copy];
        _name = [name copy];
        _unit = [unit copy];
        _category = [category copy];
        _subCategory = [subCategory copy];
        _price = price;
    }
    return self;
}

-(NSString *)description {
    NSString * desc = [NSString stringWithFormat:@"name = %@,unit = %@,price = %f,category = %@,subCategory = %@\n",self.name,self.unit,self.price,self.category,self.subCategory];
    return desc;
}

@end
