//
//  ObserverCenter.m
//  Demo_DesignPattern
//
//  Created by Claris on 2016.08.06.Saturday.
//  Copyright © 2016 tickCoder. All rights reserved.
//

#import "ObserverCenter.h"

@interface ObserverCenter ()
@property (nonatomic, strong) NSHashTable *observerList;
@end

@implementation ObserverCenter
+ (instancetype)sharedInstance {
    static ObserverCenter *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[self alloc] init];
    });
    return sharedInstance;
}

- (void)registerObserver:(id<ObserverProtocol>)aObserver {
    @synchronized (self) {
        [self.observerList addObject:aObserver];
    }
}

- (void)unregisterObserver:(id<ObserverProtocol>)aObserver {
    @synchronized (self) {
        [self.observerList removeObject:aObserver];
    }
}

- (void)changesWithTemperature:(int)temperature
                      humidity:(int)humidity
                      pressure:(int)pressure {
    @synchronized (self) {
        for (id<ObserverProtocol> observer in _observerList) {
            [observer updateTemperature:temperature
                               humidity:humidity
                               pressure:pressure];
        }
    }
}

- (NSHashTable *)observerList {
    if (!_observerList) {
        _observerList = [NSHashTable hashTableWithOptions:NSHashTableWeakMemory];
    }
    return _observerList;
}
@end
