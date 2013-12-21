//
//  main.m
//  RandomPossessions
//
//  Created by Todd Patrick on 12/10/13.
//  Copyright (c) 2013 Todd Patrick. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Possession.h"

int main(int argc, const char * argv[])
{
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc]init];
    
    NSMutableArray *items = [[NSMutableArray alloc]init];

    
    for (int i = 0; i < 10; i++) {
        Possession *p = [Possession randomPossession];
        [items addObject:p];
    }
    
    for (Possession *item in items)
        NSLog(@"%@", item);
    
    /*for (int i = 0; i < [items count]; i++) {
        NSLog(@"%@", [items objectAtIndex:i]);
    }*/
    
    
    [items release];
    items = nil;
    
    [pool drain];
    return 0;
}

