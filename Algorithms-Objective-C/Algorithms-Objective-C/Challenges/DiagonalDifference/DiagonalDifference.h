//
//  DiagonalDifference.h
//  Algorithms-Objective-C
//
//  Created by Nabil Safatli on 2019-11-10.
//  Copyright © 2019 Nabil. All rights reserved.
//
/*
 Given a square matrix, calculate the absolute difference between the sums of its diagonals.
 For example, the square matrix arr is shown below:
 1 2 3
 4 5 6
 9 8 9
 
 The left-to-right diagonal = 1+5+9 = 15.
 The right to left diagonal = 3+5+9 = 17.
 Their absolute difference is |15 - 17| = 2. 
 */

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface DiagonalDifference : NSObject

+ (NSNumber *) diagonalDifference:(NSArray *)arr;

@end

NS_ASSUME_NONNULL_END
