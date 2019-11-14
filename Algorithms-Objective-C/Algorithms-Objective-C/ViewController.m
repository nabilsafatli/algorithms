//
//  ViewController.m
//  Algorithms-Objective-C
//
//  Created by Nabil Safatli on 2019-11-09.
//  Copyright © 2019 Nabil. All rights reserved.
//

#import "ViewController.h"
#import "BinaryTreeNode.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    BinaryTreeNode* node = [[BinaryTreeNode alloc] initWithValue:2];
    for(int i = 3; i < 20; i++) {
        [node insert:i];
    }

    [node print];
}


@end
