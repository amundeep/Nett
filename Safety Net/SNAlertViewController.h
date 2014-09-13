//
//  SNAlertViewController.h
//  Safety Net
//
//  Created by Amundeep Singh on 9/13/14.
//  Copyright (c) 2014 Amundeep Singh. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

@interface SNAlertViewController : UIViewController <MKMapViewDelegate>

@property (strong, nonatomic) NSString *alertName;
@property (strong, nonatomic) IBOutlet MKMapView *alertMapView;



@end
