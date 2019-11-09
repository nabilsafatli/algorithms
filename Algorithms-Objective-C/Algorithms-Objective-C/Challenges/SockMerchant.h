//
//  SockMerchant.h
//  Algorithms-Objective-C
//
//  Created by Nabil Safatli on 2019-11-09.
//  Copyright © 2019 Nabil. All rights reserved.
//

/*
 John works at a clothing store.
 He has a large pile of socks that he must pair by color for sale.
 Given an array of integers representing the color of each sock, determine how many pairs of socks with matching colors there are.
 For example, there are n=7 socks with colors ar = [1,2,1,2,1,3,2].
 There is one pair of color 1 and one of color 2.
 There are three odd socks left, one of each color. The number of pairs is 2.
 
 Challenge from:
 https://www.hackerrank.com/challenges/sock-merchant
 */

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface SockMerchant : NSObject

- (NSNumber *) sockMerchant:(NSNumber *)n ar:(NSArray *)ar;

@end

NS_ASSUME_NONNULL_END
