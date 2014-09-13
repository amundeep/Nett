//
//  SNSecondViewController.m
//  Safety Net
//
//  Created by Amundeep Singh on 9/12/14.
//  Copyright (c) 2014 Amundeep Singh. All rights reserved.
//

#import "SNSecondViewController.h"

@interface SNSecondViewController ()

@end

@implementation SNSecondViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
//    self.edgesForExtendedLayout = UIRectEdgeAll;
//    self.infoScrollView.contentInset = UIEdgeInsetsMake(0.0f, 0.0f, self.tabBarController.tabBar.frame.size.height, 0.0f);
//    [self.infoScrollView setScrollIndicatorInsets:UIEdgeInsetsMake(0.0f, 0.0f, self.tabBarController.tabBar.frame.size.height, 0.0f)];
    
    [self.infoScrollView setContentSize:CGSizeMake(320, 720)];

    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
