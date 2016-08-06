//
//  WeatherData.m
//  Demo_DesignPattern
//
//  Created by Claris on 2016.08.06.Saturday.
//  Copyright © 2016 tickCoder. All rights reserved.
//

#import "WeatherData.h"
#import "ObserverCenter.h"

@implementation WeatherData
- (void)measurementsChanged {
    _temperature = arc4random() % 13 + 1;
    _humidity = arc4random() % 5 + 1;
    _pressure = arc4random() % 10 + 1;
    [[ObserverCenter sharedInstance] changesWithTemperature:_temperature humidity:_humidity pressure:_pressure];
}
@end
