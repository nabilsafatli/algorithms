//
//  SortingArray.m
//  Algorithms-Objective-C
//
//  Created by Nabil Safatli on 2019-11-10.
//  Copyright © 2019 Nabil. All rights reserved.
//

#import "SortingArray.h"

@implementation SortingArray

- (void) sort:(NSMutableArray<NSNumber *> *) numbers {
    BOOL reorderedArray = false;
    for (int i = 0; i < numbers.count; i++) {
        if ((i < numbers.count - 1) && ([numbers[i] intValue] > [numbers[i + 1] intValue])) {
            NSNumber *temporaryNumber = numbers[i];
            numbers[i] = numbers[i + 1];
            numbers[i + 1] = temporaryNumber;
            reorderedArray = true;
        }
    }
    if (reorderedArray) {
        [self sort: numbers];
    }
}

@end
