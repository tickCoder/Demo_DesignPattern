//
//  QuackBehavior.h
//  Demo_DesignPattern
//
//  Created by Claris on 2016.08.03.Wednesday.
//  Copyright © 2016 tickCoder. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 *  鸭叫动作
 */
@protocol QuackBehavior <NSObject>
- (void)quack;
@end
