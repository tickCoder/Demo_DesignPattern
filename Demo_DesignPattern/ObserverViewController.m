//
//  ObserverViewController.m
//  Demo_DesignPattern
//
//  Created by Claris on 2016.08.06.Saturday.
//  Copyright © 2016 tickCoder. All rights reserved.
//

#import "ObserverViewController.h"
#import "WeatherData.h"
#import "ObserverCenter.h"

@interface ObserverViewController ()
@property (nonatomic, strong) WeatherData *weatherData;
@end

@implementation ObserverViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _weatherData = [[WeatherData alloc] init];
    _weatherData.temperature = 1;
    _weatherData.humidity = 1;
    _weatherData.pressure = 1;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
- (IBAction)changeBtnAction:(id)sender {
    [_weatherData measurementsChanged];
}
- (IBAction)a_registerBtnAction:(id)sender {
    _observerA.a_registerBtn.selected = !_observerA.a_registerBtn.isSelected;
    if (_observerA.a_registerBtn.isSelected) {
        [[ObserverCenter sharedInstance] registerObserver:_observerA];
    } else {
        [[ObserverCenter sharedInstance] unregisterObserver:_observerA];
    }
    
}
- (IBAction)b_registerBtnAction:(id)sender {
    _observerB.b_registerBtn.selected = !_observerB.b_registerBtn.isSelected;
    if (_observerB.b_registerBtn.isSelected) {
        [[ObserverCenter sharedInstance] registerObserver:_observerB];
    } else {
        [[ObserverCenter sharedInstance] unregisterObserver:_observerB];
    }
}

@end
