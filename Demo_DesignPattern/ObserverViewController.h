//
//  ObserverViewController.h
//  Demo_DesignPattern
//
//  Created by Claris on 2016.08.06.Saturday.
//  Copyright © 2016 tickCoder. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ObserverA.h"
#import "ObserverB.h"

@interface ObserverViewController : UIViewController
@property (nonatomic, weak) IBOutlet ObserverA *observerA;
@property (nonatomic, weak) IBOutlet ObserverB *observerB;
@property (nonatomic, weak) IBOutlet UIButton *changeBtn;
@end
