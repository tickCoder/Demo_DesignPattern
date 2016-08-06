//
//  ViewController.m
//  Demo_DesignPattern
//
//  Created by Claris on 2016.08.03.Wednesday.
//  Copyright © 2016 tickCoder. All rights reserved.
//

#import "StrategyViewController.h"
#import "NormalDuck.h"
#import "MuteDuck.h"
#import "FlyWithWings.h"
#import "FlyNoWay.h"
#import "Quack.h"
#import "MuteQuck.h"

@interface StrategyViewController ()
@property (nonatomic, strong) FlyWithWings *flyWithWings;
@property (nonatomic, strong) FlyNoWay *flyNoWay;
@property (nonatomic, strong) Quack *quck;
@property (nonatomic, strong) MuteQuck *muteQuck;
@end

@implementation StrategyViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    _flyWithWings = [[FlyWithWings alloc] init];
    _flyNoWay = [[FlyNoWay alloc] init];
    _quck = [[Quack alloc] init];
    _muteQuck = [[MuteQuck alloc] init];
    
    NormalDuck *normalDuck = [[NormalDuck alloc] init];
    normalDuck.duckName = @"NormalDuck";
    normalDuck.flyBehavior = _flyWithWings;
    normalDuck.quackBehavior = _quck;
    [normalDuck display];
    
    MuteDuck *muteDuck = [[MuteDuck alloc] init];
    muteDuck.duckName = @"MuteDuck";
    muteDuck.flyBehavior = _flyNoWay;
    muteDuck.quackBehavior = _muteQuck;
    [muteDuck display];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
