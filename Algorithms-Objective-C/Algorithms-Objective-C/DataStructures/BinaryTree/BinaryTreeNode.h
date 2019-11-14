//
//  Node.h
//  Algorithms-Objective-C
//
//  Created by Nabil Safatli on 2019-11-13.
//  Copyright © 2019 Nabil. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface BinaryTreeNode : NSObject

@property (nonatomic, retain) BinaryTreeNode *rightNode;
@property (nonatomic, retain) BinaryTreeNode *leftNode;
@property NSUInteger value;

- (instancetype)initWithValue:(NSUInteger) value;

-(void)insert:(NSUInteger) number;
-(BOOL)contains:(NSUInteger) number;
-(void)print;

@end

NS_ASSUME_NONNULL_END
