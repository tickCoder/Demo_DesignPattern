//
//  WeatherData.h
//  Demo_DesignPattern
//
//  Created by Claris on 2016.08.06.Saturday.
//  Copyright © 2016 tickCoder. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface WeatherData : NSObject
@property (nonatomic, assign) int temperature;
@property (nonatomic, assign) int humidity;
@property (nonatomic, assign) int pressure;
- (void)measurementsChanged;
@end
