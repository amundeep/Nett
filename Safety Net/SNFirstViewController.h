//
//  SNFirstViewController.h
//  Safety Net
//
//  Created by Amundeep Singh on 9/12/14.
//  Copyright (c) 2014 Amundeep Singh. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Reachability.h"
#import <SystemConfiguration/SystemConfiguration.h>
#import <CoreBluetooth/CoreBluetooth.h>
@interface SNFirstViewController : UIViewController



- (BOOL)connected;
@property (strong, nonatomic) IBOutlet UILabel *longCord;
@property (strong, nonatomic) IBOutlet UITextView *latCord;

@end
