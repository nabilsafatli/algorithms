//
//  HourGlass.m
//  Algorithms-Objective-C
//
//  Created by Nabil Safatli on 2019-11-11.
//  Copyright © 2019 Nabil. All rights reserved.
//

#import "HourGlass.h"

@implementation HourGlass

+ (NSNumber *) hourglassSum:(NSArray *)arr {
    NSMutableArray *result = [NSMutableArray new];
    NSArray *firstLine = (NSArray *) [arr objectAtIndex:0];
    for(int i = 0; i < arr.count; i++) {
        for(int u = 0; u < firstLine.count; u++) {
            if((firstLine.count - u) < 3) {
                return
            }
        }
    }
    return [NSNumber numberWithInt:0];
}

+ (void) execute {
    NSArray *multiArray = [NSArray arrayWithObjects:
                           [NSMutableArray array],
                           [NSMutableArray array],
                           [NSMutableArray array],
                           [NSMutableArray array], nil];
    [[multiArray objectAtIndex:0] addObject:@3];
    [[multiArray objectAtIndex:0] addObject:@8];
    [[multiArray objectAtIndex:0] addObject:@43];
    [[multiArray objectAtIndex:1] addObject:@11];
    [[multiArray objectAtIndex:1] addObject:@2];
    [[multiArray objectAtIndex:1] addObject:@4];
    [[multiArray objectAtIndex:2] addObject:@4];
    [[multiArray objectAtIndex:2] addObject:@5];
    [[multiArray objectAtIndex:2] addObject:@6];
    [[multiArray objectAtIndex:3] addObject:@10];
    [[multiArray objectAtIndex:3] addObject:@8];
    [[multiArray objectAtIndex:3] addObject:@12];
    
    NSNumber *result = [HourGlass hourglassSum:multiArray];
    NSLog(@"item: %u", [result intValue]);
}

@end
