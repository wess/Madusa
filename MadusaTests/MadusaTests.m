//
//  MadusaTests.m
//  MadusaTests
//
//  Created by Wess Cope on 3/27/14.
//  Copyright (c) 2014 Wess Cope. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "NSArray+Madusa.h"

@interface MadusaTests : XCTestCase

@end

@implementation MadusaTests

- (void)testFilter
{
    NSArray *array = @[@"foo", @"bar", @"baz"];
    
    array = array.filter(^BOOL(NSString *str) {
        return ![str isEqualToString:@"bar"];
    });
    
    XCTAssertFalse([array containsObject:@"bar"], @"Filter should not contain string");
}

- (void)testMap
{
    NSArray *array = @[@"foo"];

    array = array.map(^id(NSString *string) {
        return [string uppercaseString];
    });
    
    NSString *foo = [array firstObject];
    XCTAssertTrue([foo isEqualToString:@"FOO"], @"Map result should contain a string with app caps");
}

- (void)testReduce
{
    NSArray *array = @[@"foo", @"bar", @"baz"];

    NSString *result = array.reduce(@"world", ^id(NSString *sum, NSString *obj){
        return [NSString stringWithFormat:@"%@.%@", sum, obj];
    });
    
    XCTAssertTrue([result isEqualToString:@"world.foo.bar.baz"], @"Reduce must return the result of the block hander");
}

@end
