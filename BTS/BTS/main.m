//
//  main.m
//  BTS
//
//  Created by Zabolotnyy S. on 10.07.15.
//
//

#import <Foundation/Foundation.h>
#import "treeNode.h"

NSInteger find(NSInteger num, treeNode* node)
{
    NSInteger val = num;
    
    while(node)
    {
        if( node.num >= num )
        {
            node = node.left;
        }
        else
        {
            val = node.num;
            node = node.right;
        }
    }
    
    return val;
}

int main(int argc, const char * argv[])
{
    @autoreleasepool
    {
        // insert code here...
        NSLog(@"Hello, World!");
        
        NSArray * nodesValues = @[@11, @3, @54, @6, @42, @95, @2, @45, @24, @23, @34];
        treeNode* rootTreeNode = [[treeNode alloc] initWithNum:[nodesValues[0] integerValue]];
        
        for (int i = 1; i < [nodesValues count]; ++i)
        {
            treeNode * newNode = [[treeNode alloc] initWithNum:[nodesValues[i] integerValue]];
            [rootTreeNode insertNode:newNode];
        }
        
        NSLog(@"Largest value that is smaler than 45 value");
        NSLog(@"%lu", find(45, rootTreeNode));

        assert( @"error" &&  find(45, rootTreeNode) == 42);
        assert( @"error" &&  find(0, rootTreeNode) == 0);
        assert( @"error" &&  find(95, rootTreeNode) == 54);
        assert( @"error" &&  find(100, rootTreeNode) == 95);
        assert( @"error" &&  find(11, rootTreeNode) == 6);
        assert( @"error" &&  find(12, rootTreeNode) == 11);
        assert( @"error" &&  find(35, rootTreeNode) == 34);
    }
    
    return 0;
}
