//
//  ObserverB.h
//  Demo_DesignPattern
//
//  Created by Claris on 2016.08.06.Saturday.
//  Copyright © 2016 tickCoder. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ObserverCenter.h"

@interface ObserverB : UIView <ObserverProtocol>
@property (nonatomic, weak) IBOutlet UILabel *b_temperatureLabel;
@property (nonatomic, weak) IBOutlet UILabel *b_humidityLabel;
@property (nonatomic, weak) IBOutlet UILabel *b_pressureLabel;
@property (nonatomic, weak) IBOutlet UIButton *b_registerBtn;
@end
