//
//  JumpingOnTheClouds.m
//  Algorithms-Objective-C
//
//  Created by Nabil Safatli on 2019-11-09.
//  Copyright © 2019 Nabil. All rights reserved.
//

#import "JumpingOnTheClouds.h"

@implementation JumpingOnTheClouds

- (NSNumber *) jumpingOnClouds:(NSArray *)c {
    int jumps = 0;
    for(int i = 1; i < c.count; i++) {
        if (i+1 == c.count) {
            jumps++;
            return [NSNumber numberWithInt:jumps];
        }
        int afterNextCloud = [(NSNumber *)[c objectAtIndex:i + 1] intValue];
        if(afterNextCloud == 0) {
            i++;
        }
        jumps++;
    }
    return [NSNumber numberWithInt:jumps];
}

@end
