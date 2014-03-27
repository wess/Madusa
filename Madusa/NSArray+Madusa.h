//
//  NSArray+Madusa.h
//  Madusa
//
//  Created by Wess Cope on 3/27/14.
//  Copyright (c) 2014 Wess Cope. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MedusaTypes.h"

@interface NSArray (Madusa)
/**
 `NSArray(Madusa)` is an extension to NSArray to add map/reduce and other functionality
 for working with it's contents.
 */

/**
 Filters an array using a block that returns true or false for an object, that 
 determines if it should be removed from or kept in the array.

 @param block Takes one object as an argument and returns a NO to remove and YES to keep.
 @return Returns a new array that includes items that return YES from the block.
 */
@property (readonly, nonatomic) MadusaFilterBlock       filter;

/**
 Loops over the array applying the result of the passed block to the item at current index.
 
 @param block Takes one object and returns one object that is to replace the passed object.
 @return Returns an array with properties resulting from passed block.
 */
@property (readonly, nonatomic) MadusaArrayBlock        map;

/**
 Reduce loops over the array, using it's contents and an initial value, to create a result object 
 from the block effects on the items in the array.
 
 @param initial The value the reduce starts with.
 @param block Reduce block that takes current sum and the next object and returns a new sum object.
 @return Returns the result of from the reduce block's effect on the array.
 */
@property (readonly, nonatomic) MadusaArrayReduceBlock  reduce;

/**
 Does exactly the same as  `Reduce` but in the reverse order.
 
 @param initial The value the reduce starts with.
 @param block Reduce block that takes current sum and the next object and returns a new sum object.
 @return Returns the result of from the reduce block's effect on the array.
 */
@property (readonly, nonatomic) MadusaArrayReduceBlock  reduceRight;
@end

