//
//  ViewController.m
//  Algorithms-Objective-C
//
//  Created by Nabil Safatli on 2019-11-09.
//  Copyright © 2019 Nabil. All rights reserved.
//

#import "ViewController.h"
#import "MyQueue.h"
#import "MyStack.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
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
