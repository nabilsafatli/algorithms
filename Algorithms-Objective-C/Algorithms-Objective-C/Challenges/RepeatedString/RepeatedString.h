//
//  RepeatedString.h
//  Algorithms-Objective-C
//
//  Created by Nabil Safatli on 2019-11-09.
//  Copyright © 2019 Nabil. All rights reserved.
//
/*
 Lilah has a string, S, of lowercase English letters that she repeated infinitely many times.
 Given an integer, N, find and print the number of letter a's in the first N letters of Lilah's infinite string.
 For example, if the string S='abcac' and N=10 , the substring we consider is abcacabcac, the first 10 characters of her infinite string.
 There are 4 occurrences of A in the substring.
 */

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface RepeatedString : NSObject

+ (NSNumber *) repeatedString:(NSString *)s n:(NSNumber *)n;

@end

NS_ASSUME_NONNULL_END
