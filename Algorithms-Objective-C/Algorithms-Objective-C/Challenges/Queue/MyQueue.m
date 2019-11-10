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

@end
