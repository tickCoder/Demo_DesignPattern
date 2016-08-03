//
//  Duck.h
//  Demo_DesignPattern
//
//  Created by Claris on 2016.08.03.Wednesday.
//  Copyright © 2016 tickCoder. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FlyBehavior.h"
#import "QuackBehavior.h"

/**
 *  鸭子的父类
 */
@interface Duck : NSObject
@property (nonatomic, copy) NSString *duckName;
@property (nonatomic, weak) id<FlyBehavior> flyBehavior;
@property (nonatomic, weak) id<QuackBehavior> quackBehavior;
- (void)display;
- (void)performFly;
- (void)performQuack;
@end
