//
//  PlusMinus.m
//  Algorithms-Objective-C
//
//  Created by Nabil Safatli on 2019-11-10.
//  Copyright © 2019 Nabil. All rights reserved.
//

#import "PlusMinus.h"

@implementation PlusMinus

+ (void) plusMinus:(NSArray *)arr {
    NSMutableArray *zeros = [NSMutableArray new];
    NSMutableArray *negatives = [NSMutableArray new];
    NSMutableArray *positives = [NSMutableArray new];
    
    for(int i = 0; i < arr.count; i++) {
        int number = [(NSNumber *)arr[i] intValue];
        if (number == 0) {
            [zeros addObject: arr[i]];
        } else if (number > 0) {
            [positives addObject: arr[i]];
        } else {
            [negatives addObject: arr[i]];
        }
    }
    
    float percentageZeros = (float)zeros.count/(float)arr.count;
    float percentagePositives = (float)positives.count/(float)arr.count;
    float percentageNegatives = (float)negatives.count/(float)arr.count;
    NSString *result = [NSString stringWithFormat:@"%f\n%f\n%f",percentagePositives, percentageNegatives, percentageZeros];
    printf("%s", [result cStringUsingEncoding:[NSString defaultCStringEncoding]]);
}

+ (void) execute {
    NSArray *numbers = [[NSArray alloc] initWithObjects:@-4, @3, @-9, @0, @4, @1, nil];
    [PlusMinus plusMinus:numbers];
}

@end
