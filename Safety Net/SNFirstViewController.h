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

@interface SNFirstViewController : UIViewController{
    
    NSMutableArray *myAlerts;
}

@property (strong, nonatomic) IBOutlet UITableView *alertTableView;
@property (strong, nonatomic) NSString *dataString;

@property (strong, nonatomic) NSMutableArray *myAlertsTemp;
@property (strong, nonatomic) NSMutableArray *myAlerts;
@property (strong, nonatomic) NSArray *passedData;

@end
