//
//  MyQueue.m
//  Algorithms-Objective-C
//
//  Created by Nabil Safatli on 2019-11-10.
//  Copyright © 2019 Nabil. All rights reserved.
//

#import "MyQueue.h"

@interface MyQueue()

@property (nonatomic, retain) NSMutableArray *items;

@end

@implementation MyQueue

-(instancetype)init
{
    self = [super init];
    if (self) {
        self.items = [NSMutableArray new];
    }
    return self;
}

-(void)push:(id) item {
    [self.items addObject:item];
}

-(id)pop {
    id item = [self.items objectAtIndex:0];
    [self.items removeObjectAtIndex:0];
    return item;
}

- (void) execute {
    NSArray *numbers = [[NSArray alloc] initWithObjects:@0,@1,@2,@3,@4,@5, nil];
    MyQueue *queue = [MyQueue new];
    for(int i = 0; i < numbers.count; i++) {
        id number = [numbers objectAtIndex:i];
        [queue push:number];
    }
    for(int i = 0; i < numbers.count; i++) {
        NSNumber *number = (NSNumber *)[queue pop];
        NSLog(@"number: %i", [number intValue]);
    }
}

@end
