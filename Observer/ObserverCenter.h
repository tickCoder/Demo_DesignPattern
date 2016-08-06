//
//  ObserverCenter.h
//  Demo_DesignPattern
//
//  Created by Claris on 2016.08.06.Saturday.
//  Copyright © 2016 tickCoder. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol ObserverProtocol <NSObject>
- (void)updateTemperature:(int)temperature
                 humidity:(int)humidity
                 pressure:(int)pressure;
@end

/**
 *  订阅中心
 *
 *  为了方便也可以保存各个数据的值,或者将每个数据分离开发单独通知, 方便observer单独获取
 *  也可以增加是否发送通知的过滤，如只有变化超过10%的时候才发送通知
 */
@interface ObserverCenter : NSObject
+ (instancetype)sharedInstance;
- (instancetype)init NS_UNAVAILABLE;
- (void)registerObserver:(id<ObserverProtocol>)aObserver;
- (void)unregisterObserver:(id<ObserverProtocol>)aObserver;
- (void)changesWithTemperature:(int)temperature
                      humidity:(int)humidity
                      pressure:(int)pressure;
@end
