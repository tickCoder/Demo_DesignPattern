//
//  ObserverA.h
//  Demo_DesignPattern
//
//  Created by Claris on 2016.08.06.Saturday.
//  Copyright © 2016 tickCoder. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ObserverCenter.h"

@interface ObserverA : UIView <ObserverProtocol>
@property (nonatomic, weak) IBOutlet UILabel *a_temperatureLabel;
@property (nonatomic, weak) IBOutlet UILabel *a_humidityLabel;
@property (nonatomic, weak) IBOutlet UILabel *a_pressureLabel;
@property (nonatomic, weak) IBOutlet UIButton *a_registerBtn;
@end
