//
//  VVStackSpec.m
//  MeiQianZheng
//
//  Created by msn on 16/7/14.
//  Copyright 2016年 ZYL. All rights reserved.
//

#import <Kiwi/Kiwi.h>
#import "VVStack.h"


SPEC_BEGIN(VVStackSpec)

describe(@"VVStack", ^{
    context(@"when create", ^{
        __block VVStack * stack = nil;
        //beforeEach() 在scope内的每个it之前调用一次，对于context的配置代码应该写在这里
        beforeEach(^{
            stack = [VVStack new];
        });
        
        afterEach(^{
            stack = nil;
        });
        
        it(@"should have the class VVStack", ^{
            [[[VVStack class] shouldNot] beNil];
        });
        
        it(@"should exist", ^{
            [[stack shouldNot] beNil];
        });
        
        it(@"should be able to push and get top", ^{
            [stack push:2.3];
            [[theValue(stack.top) should] equal:theValue(2.3)];
            
            [stack push:4.6];
            [[theValue(stack.top) should] equal:4.6 withDelta:0.001];
        });
    });
});

SPEC_END
