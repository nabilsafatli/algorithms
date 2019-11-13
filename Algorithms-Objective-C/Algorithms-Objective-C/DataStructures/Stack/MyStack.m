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

-(void) execute {
    NSArray *numbers = [[NSArray alloc] initWithObjects:@0,@1,@2,@3,@4,@5, nil];
    MyStack *stack = [MyStack new];
    for(int i = 0; i < numbers.count; i++) {
        id number = [numbers objectAtIndex:i];
        [stack push:number];
    }
    for(int i = 0; i < numbers.count; i++) {
        NSNumber *number = (NSNumber *)[stack pop];
        NSLog(@"number: %i", [number intValue]);
    }
}

@end
