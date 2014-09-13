//
//  SNFirstViewController.h
//  Safety Net
//
//  Created by Amundeep Singh on 9/12/14.
//  Copyright (c) 2014 Amundeep Singh. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SNFirstViewController : UIViewController{
    
    NSMutableArray *myAlerts;
}

@property (strong, nonatomic) IBOutlet UITableView *alertTableView;

@property (strong, nonatomic) NSMutableArray *myAlerts;

@end
