//
//  ObserverA.m
//  Demo_DesignPattern
//
//  Created by Claris on 2016.08.06.Saturday.
//  Copyright © 2016 tickCoder. All rights reserved.
//

#import "ObserverA.h"

@implementation ObserverA
- (void)updateTemperature:(int)temperature humidity:(int)humidity pressure:(int)pressure {
    NSLog(@"%s: %d, %d, %d", __PRETTY_FUNCTION__, temperature, humidity, pressure);
    _a_temperatureLabel.text = [NSString stringWithFormat:@"%d", temperature];
    _a_humidityLabel.text = [NSString stringWithFormat:@"%d", humidity];
    _a_pressureLabel.text = [NSString stringWithFormat:@"%d", pressure];
}
@end
