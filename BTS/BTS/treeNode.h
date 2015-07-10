//
//  treeNode.h
//  BTS
//
//  Created by Zabolotnyy S. on 10.07.15.
//
//

#import <Foundation/Foundation.h>

@interface treeNode : NSObject

@property (nonatomic, assign) NSInteger num;
@property (nonatomic, strong) treeNode * left;
@property (nonatomic, strong) treeNode * right;

- (instancetype)initWithNum:(NSInteger)num;

- (void) insertNode:(treeNode*)node;

@end
