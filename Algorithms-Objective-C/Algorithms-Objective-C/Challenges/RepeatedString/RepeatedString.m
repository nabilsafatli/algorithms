//
//  RepeatedString.m
//  Algorithms-Objective-C
//
//  Created by Nabil Safatli on 2019-11-09.
//  Copyright © 2019 Nabil. All rights reserved.
//

#import "RepeatedString.h"

@implementation RepeatedString

+ (NSNumber *) repeatedString:(NSString *)s n:(NSNumber *)n {
    NSUInteger numberOfOccurrences = [[s componentsSeparatedByString:@"a"] count] - 1;
    long result = ([n longValue]/ s.length) * numberOfOccurrences;
    NSUInteger restOfNumbers = [n longValue]%s.length;
    for(int i = 0; i < restOfNumbers; i++) {
        if([s characterAtIndex:i] == 'a') {
            result++;
        }
    }
    return [NSNumber numberWithLong:result];
}

+ (void) execute {
    NSString *string = @"epsxyyflvrrrxzvnoenvpegvuonodjoxfwdmcvwctmekpsnamchznsoxaklzjgrqruyzavshfbmuhdwwmpbkwcuomqhiyvuztwvq";
    NSNumber *number = @549382313570;
    long result = [(NSNumber *)[RepeatedString repeatedString:string n:number] longValue];
    NSLog(@"Number of ocurrences of A is %ld", result);
}

@end
