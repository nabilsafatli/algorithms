//
//  MyStack.m
//  Algorithms-Objective-C
//
//  Created by Nabil Safatli on 2019-11-10.
//  Copyright © 2019 Nabil. All rights reserved.
//

#import "MyStack.h"

@interface MyStack()

@property (nonatomic, retain) NSMutableArray *items;

@end

@implementation MyStack

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.items = [NSMutableArray new];
    }
    return self;
}

-(void) push:(id) item {
    [self.items addObject:item];
}

-(id) pop {
    NSUInteger lastIndex = self.items.count - 1;
    id item = [self.items objectAtIndex:lastIndex];
    [self.items removeObjectAtIndex:lastIndex];
    return item;
}

@end
