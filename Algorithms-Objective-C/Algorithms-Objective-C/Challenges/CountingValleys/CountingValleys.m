//
//  CountingValleys.m
//  Algorithms-Objective-C
//
//  Created by Nabil Safatli on 2019-11-09.
//  Copyright © 2019 Nabil. All rights reserved.
//

#import "CountingValleys.h"

@implementation CountingValleys

- (NSNumber *) countingValleys:(NSNumber *)n s:(NSString *)s {
    int valleyNumbers = 0;
    int seaLevel = 0;
    for (int i = 0; i < [s length]; i++) {
        char step = [s characterAtIndex:i];
        if(step == 'D') {
            if(seaLevel == 0) {
                valleyNumbers++;
            }
            seaLevel--;
        } else {
            seaLevel++;
        }
    }
    
    return [NSNumber numberWithInt:valleyNumbers];
}

@end
