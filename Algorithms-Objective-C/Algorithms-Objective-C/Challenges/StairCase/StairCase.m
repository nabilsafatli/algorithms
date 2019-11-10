//
//  StairCase.m
//  Algorithms-Objective-C
//
//  Created by Nabil Safatli on 2019-11-10.
//  Copyright © 2019 Nabil. All rights reserved.
//

#import "StairCase.h"

@implementation StairCase

+ (void) staircase:(NSNumber *)n {
    NSMutableString *stair = [NSMutableString new];
    for(int i = 1; i <= [n intValue]; i ++) {
        int numberOfEmptySpaces = [n intValue] - i;
        for(int u = 0; u <= [n intValue] - 1; u ++) {
            if (numberOfEmptySpaces > 0) {
                [stair appendString:@" "];
                numberOfEmptySpaces--;
            } else {
                [stair appendString:@"#"];
            }
        }
        [stair appendString:@"\n"];
    }
    printf("%s", [stair cStringUsingEncoding:[NSString defaultCStringEncoding]]);
}

+ (void) execute {
    [StairCase staircase:@4];
}

@end
