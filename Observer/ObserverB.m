//
//  ObserverB.m
//  Demo_DesignPattern
//
//  Created by Claris on 2016.08.06.Saturday.
//  Copyright © 2016 tickCoder. All rights reserved.
//

#import "ObserverB.h"

@implementation ObserverB
- (void)updateTemperature:(int)temperature humidity:(int)humidity pressure:(int)pressure {
    NSLog(@"%s: %d, %d, %d", __PRETTY_FUNCTION__, temperature, humidity, pressure);
    _b_temperatureLabel.text = [NSString stringWithFormat:@"%d", temperature];
    _b_humidityLabel.text = [NSString stringWithFormat:@"%d", humidity];
    _b_pressureLabel.text = [NSString stringWithFormat:@"%d", pressure];
}
@end
