//
//  DiagonalDifference.m
//  Algorithms-Objective-C
//
//  Created by Nabil Safatli on 2019-11-10.
//  Copyright © 2019 Nabil. All rights reserved.
//

#import "DiagonalDifference.h"

@implementation DiagonalDifference

+ (NSNumber *) diagonalDifference:(NSArray *)arr {
    int firstDiagonal = 0;
    int secondDiagonal = 0;
    for(int i = 0; i < arr.count; i++) {
        int number = [[(NSArray *)[arr objectAtIndex:i] objectAtIndex:i] intValue];
        firstDiagonal += number;
    }
    
    int u = (int)arr.count - 1;
    for(int i = 0; i < arr.count; i++) {
        int number = [[(NSArray *)[arr objectAtIndex:i] objectAtIndex:u] intValue];
        secondDiagonal += number;
        u--;
    }
    
    int result = abs(firstDiagonal - secondDiagonal);
    return [NSNumber numberWithInt: result];
}

+ (void) execute {
    NSArray *multiArray = [NSArray arrayWithObjects:
                           [NSMutableArray array],
                           [NSMutableArray array],
                           [NSMutableArray array],
                           [NSMutableArray array], nil];
    [[multiArray objectAtIndex:0] addObject:@3];
    [[multiArray objectAtIndex:1] addObject:@11];
    [[multiArray objectAtIndex:1] addObject:@2];
    [[multiArray objectAtIndex:1] addObject:@4];
    [[multiArray objectAtIndex:2] addObject:@4];
    [[multiArray objectAtIndex:2] addObject:@5];
    [[multiArray objectAtIndex:2] addObject:@6];
    [[multiArray objectAtIndex:3] addObject:@10];
    [[multiArray objectAtIndex:3] addObject:@8];
    [[multiArray objectAtIndex:3] addObject:@-12];
    NSNumber *number = [DiagonalDifference diagonalDifference: multiArray];
    NSLog(@"Number: %@",[number stringValue]);
}

@end
