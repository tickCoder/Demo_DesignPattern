//
//  Duck.m
//  Demo_DesignPattern
//
//  Created by Claris on 2016.08.03.Wednesday.
//  Copyright © 2016 tickCoder. All rights reserved.
//

#import "Duck.h"

@implementation Duck
- (void)performFly {
    [_flyBehavior fly];
}

- (void)performQuack {
    [_quackBehavior quack];
}

- (void)display {
    NSLog(@"I am %@", self.duckName);
    [self performFly];
    [self performQuack];
    NSLog(@"================================");
}
@end
