//
//  treeNode.m
//  BTS
//
//  Created by Zabolotnyy S. on 10.07.15.
//
//

#import "treeNode.h"

@implementation treeNode

-(instancetype)initWithNum:(NSInteger)num
{
    self = [super init];
    if (self)
    {
        self.num = num;
    }
    
    return self;
}

- (void) insertNode:(treeNode*)node
{
    if (node.num > self.num) //right value
    {
        if (self.right)
        {
            [self.right insertNode:node];
        }
        else
        {
            self.right = node;
        }
    }
    else if (node.num < self.num) //left value
    {
        if (self.left)
        {
            [self.left insertNode:node];
        }
        else
        {
            self.left = node;
        }
    }
}

@end
