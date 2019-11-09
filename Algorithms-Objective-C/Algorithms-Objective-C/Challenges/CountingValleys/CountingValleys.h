//
//  CountingValleys.h
//  Algorithms-Objective-C
//
//  Created by Nabil Safatli on 2019-11-09.
//  Copyright © 2019 Nabil. All rights reserved.
//
/*Gary is an avid hiker. He tracks his hikes meticulously, paying close attention to small details like topography.
 During his last hike he took exactly N steps. For every step he took, he noted if it was an uphill, U, or a downhill, D step.
 Gary's hikes start and end at sea level and each step up or down represents a 1 unit change in altitude.
 We define the following terms:
 - A mountain is a sequence of consecutive steps above sea level,
 starting with a step up from sea level and ending with a step down to sea level.
 
 - A valley is a sequence of consecutive steps below sea level, starting with a step down from sea level and ending with a step up to sea level.
 
 Given Gary's sequence of up and down steps during his last hike, find and print the number of valleys he walked through.
 
 For example, if Gary's path is S = [DDUUUUDD], he first enters a 2 valley units deep.
 Then he climbs out an up onto a mountain 2 units high.
 Finally, he returns to sea level and ends his hike.
 
 Challenge from: https://www.hackerrank.com/challenges/counting-valleys
 */
#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface CountingValleys : NSObject

- (NSNumber *) countingValleys:(NSNumber *)n s:(NSString *)s;

@end

NS_ASSUME_NONNULL_END
