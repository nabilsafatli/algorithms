//
//  Node.m
//  Algorithms-Objective-C
//
//  Created by Nabil Safatli on 2019-11-13.
//  Copyright © 2019 Nabil. All rights reserved.
//

#import "BinaryTreeNode.h"

@implementation BinaryTreeNode

- (instancetype)initWithValue:(NSUInteger) value {
    self = [super init];
    if (self) {
        self.value = value;
    }
    return self;
}

- (void)insert:(NSUInteger) number {
    if(number == self.value) {
        NSLog(@"Already contains this number");
        return;
    }
    if(number > self.value) {
        if(self.rightNode) {
            [self.rightNode insert:number];
        } else {
            self.rightNode = [[BinaryTreeNode alloc] initWithValue:number];
        }
    } else {
        if(self.leftNode) {
            [self.leftNode insert:number];
        } else {
            self.leftNode = [[BinaryTreeNode alloc] initWithValue:number];
        }
    }
}

- (BOOL)contains:(NSUInteger) number; {
    //TO DO
    return NO;
}

- (void)print {
    if(self.leftNode) {
        [self.leftNode print];
    }
    NSLog(@"%ld", self.value);
    if(self.rightNode) {
        [self.rightNode print];
    }
}

@end
