//
//  ViewController.m
//  Algorithms-Objective-C
//
//  Created by Nabil Safatli on 2019-11-09.
//  Copyright © 2019 Nabil. All rights reserved.
//

#import "ViewController.h"
#import "Node.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    Node* node = [[Node alloc] initWithValue:2];
    for(int i = 3; i < 20; i++) {
        [node insert:i];
    }

    [node print];
}


@end
