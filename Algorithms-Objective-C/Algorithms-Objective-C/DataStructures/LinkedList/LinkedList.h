//
//  LinkedList.h
//  Algorithms-Objective-C
//
//  Created by Nabil Safatli on 2019-11-14.
//  Copyright © 2019 Nabil. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface LinkedList : NSObject

@property int data;

@property (nonatomic, retain) LinkedList *next;

-(void) appendItem:(LinkedList *) item;

@end

NS_ASSUME_NONNULL_END
