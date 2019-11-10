//
//  PlusMinus.h
//  Algorithms-Objective-C
//
//  Created by Nabil Safatli on 2019-11-10.
//  Copyright © 2019 Nabil. All rights reserved.
//
/*
 Given an array of integers, calculate the fractions of its elements that are positive, negative, and are zeros.
 Print the decimal value of each fraction on a new line.
 
 Note: This challenge introduces precision problems.
 The test cases are scaled to six decimal places, though answers with absolute error of up to 10(-4) are acceptable.
 
 For example, given the array [1,1,0,-1,-1] there are 5 elements, two positive, two negative and one zero.
 Their ratios would be 2/5=0.400000 , and 1/5=0.20000. It should be printed as
 0.400000
 0.400000
 0.200000
 
 Sample Input
 6
 -4 3 -9 0 4 1
 
 Sample Output
 0.500000
 0.333333
 0.166667
 
 Challenge from: https://www.hackerrank.com/challenges/plus-minus
 */
#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface PlusMinus : NSObject

+ (void) plusMinus:(NSArray *)arr;

@end

NS_ASSUME_NONNULL_END
