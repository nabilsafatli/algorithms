//
//  LinkedList.m
//  Algorithms-Objective-C
//
//  Created by Nabil Safatli on 2019-11-14.
//  Copyright © 2019 Nabil. All rights reserved.
//

#import "LinkedList.h"

@implementation LinkedList

-(void) appendItem:(LinkedList *) item {
    if(!self.next) {
        self.next = item;
    } else {
        [self.next appendItem:item];
    }
}

@end
