//
//  SNSecondViewController.h
//  Safety Net
//
//  Created by Amundeep Singh on 9/12/14.
//  Copyright (c) 2014 Amundeep Singh. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Reachability.h"
#import <SystemConfiguration/SystemConfiguration.h>
#import <CoreBluetooth/CoreBluetooth.h>

@interface SNSecondViewController : UIViewController{
    
    
}
- (IBAction)saveButton:(id)sender;


@property (strong, nonatomic) IBOutlet UIScrollView *infoScrollView;
- (BOOL)connected;

@property (strong, nonatomic) NSString *totalData;
@property (strong, nonatomic) IBOutlet UITextField *userName;

@property (strong, nonatomic) IBOutlet UITextField *userNumber;
@property (strong, nonatomic) IBOutlet UITextField *userStreet;
@property (strong, nonatomic) IBOutlet UITextField *userCity;
@property (strong, nonatomic) IBOutlet UITextField *userState;
@property (strong, nonatomic) IBOutlet UITextField *userZip;



@end
