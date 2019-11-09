//
//  SockMerchant.m
//  Algorithms-Objective-C
//
//  Created by Nabil Safatli on 2019-11-09.
//  Copyright © 2019 Nabil. All rights reserved.
//

#import "SockMerchant.h"

@implementation SockMerchant

+ (NSNumber *) sockMerchant:(NSNumber *)n ar:(NSArray *)ar {
    NSMutableDictionary *socksGroups = [NSMutableDictionary new];

    for(int i = 0; i < ar.count; i++) {
        NSNumber *sock = (NSNumber *)[ar objectAtIndex:i];
        if ([socksGroups objectForKey:sock] != nil) {
            int currentSocksQuantity = [(NSNumber *)[socksGroups objectForKey:sock] intValue];
            [socksGroups setObject:[NSNumber numberWithInt:currentSocksQuantity + 1] forKey:sock];
        } else {
            [socksGroups setObject:[NSNumber numberWithInt:1] forKey:sock];
        }
    }

    int numberOfPairs = 0;
    NSEnumerator *enumerator = [socksGroups keyEnumerator];
    id key;
    while((key = [enumerator nextObject])) {
        int pairs = [(NSNumber *)[socksGroups objectForKey:key] intValue]/2;
        numberOfPairs += pairs;
    }

    return [NSNumber numberWithInt:numberOfPairs];
}

@end
