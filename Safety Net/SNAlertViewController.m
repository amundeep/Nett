//
//  SNAlertViewController.m
//  Safety Net
//
//  Created by Amundeep Singh on 9/13/14.
//  Copyright (c) 2014 Amundeep Singh. All rights reserved.
//

#import "SNAlertViewController.h"

@interface SNAlertViewController ()

@end

@implementation SNAlertViewController

@synthesize timeAlert;
@synthesize phoneNumber;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.alertMapView.delegate = self;
    
    float lon = -75.190002;
    float lat = 39.950898;
    CLLocationCoordinate2D coord = CLLocationCoordinate2DMake(lat, lon);
    
    MKCoordinateSpan span = MKCoordinateSpanMake(0.01, 0.01);
    MKCoordinateRegion region = {coord, span};
    
    MKPointAnnotation *annotation = [[MKPointAnnotation alloc] init];
    [annotation setCoordinate:coord];
    
    [self.alertMapView setRegion:region];
    [self.alertMapView addAnnotation:annotation];
    
    NSDateFormatter *DateFormatter=[[NSDateFormatter alloc] init];
    [DateFormatter setDateFormat:@"MM-dd-yyyy hh:mm at"];
    NSLog(@"%@",[DateFormatter stringFromDate:[NSDate date]]);
    
    
    timeAlert.text = [DateFormatter stringFromDate:[NSDate date]];
    phoneNumber.text = @"(408) 391 - 0545";
    
}

- (void)mapViewWillStartLoadingMap:(MKMapView *)mapView
{
    NSLog(@"%s", "Fkin' swag");
//    MKCoordinateRegion mapRegion;
//    CLLocationCoordinate2D alertLoc = CLLocationCoordinate2DMake(-75.190002, 39.950898);
//    mapRegion.center = alertLoc;
//    mapRegion.span.latitudeDelta = 2.0;
//    mapRegion.span.longitudeDelta = 2.0;
//    
//    [mapView setRegion:mapRegion animated: YES];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
