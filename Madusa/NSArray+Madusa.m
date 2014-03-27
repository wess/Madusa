//
//  NSArray+Madusa.m
//  Madusa
//
//  Created by Wess Cope on 3/27/14.
//  Copyright (c) 2014 Wess Cope. All rights reserved.
//

#import "NSArray+Madusa.h"
#import "MedusaConstants.h"

@implementation NSArray (Madusa)

- (MadusaFilterBlock)filter
{
    @madusa_weakify(self);
    return ^NSArray *(MadusaBoolBlock block) {
        @madusa_strongify(self);
        
        return self.map(^id (id obj) {
            return block(obj)? obj : nil;
        });
    };
}

- (MadusaArrayBlock)map
{
    @madusa_weakify(self);
    return ^NSArray *(MadusaBlock block) {
        @madusa_strongify(self);
        __block NSMutableArray *mutableArray = [[NSMutableArray alloc] initWithCapacity:self.count];
        [self enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
            id mapped = block(obj);
            
            if(mapped)
                [mutableArray addObject:mapped];
        }];
        
        return [mutableArray copy];
    };
}

- (MadusaArrayReduceBlock)reduce
{
    @madusa_weakify(self);
    return ^id(id initial, MadusaReduceBlock block) {
        @madusa_strongify(self);
        
        __block id result = initial;
        [self enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
            result = block(result, obj);
        }];
        
        return result;
    };
}

- (MadusaArrayReduceBlock)reduceRight
{
    return self.reverseObjectEnumerator.allObjects.reduce;
}

@end
