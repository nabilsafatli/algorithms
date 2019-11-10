//
//  StairCase.h
//  Algorithms-Objective-C
//
//  Created by Nabil Safatli on 2019-11-10.
//  Copyright © 2019 Nabil. All rights reserved.
//
/*Observe that its base and height are both equal to N, and the image is drawn using # symbols and spaces.
 The last line is not preceded by any spaces.
 Write a program that prints a staircase of size N.
    #
   ##
  ###
 ####
 
 Challenge from: https://www.hackerrank.com/challenges/staircase/
 */
#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface StairCase : NSObject

+ (void) staircase:(NSNumber *)n;

@end

NS_ASSUME_NONNULL_END
