//
//  SNFirstViewController.m
//  Safety Net
//
//  Created by Amundeep Singh on 9/12/14.
//  Copyright (c) 2014 Amundeep Singh. All rights reserved.
//

#import "SNFirstViewController.h"

@interface SNFirstViewController ()

@end

@implementation SNFirstViewController

@synthesize myAlerts;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    myAlerts = [[NSMutableArray alloc] initWithObjects:@"Test Object 1", @"Test Object 2", nil];
    
    [self.tabBarController.tabBar setTintColor:[UIColor redColor]];
    
    self.edgesForExtendedLayout = UIRectEdgeAll;
    self.alertTableView.contentInset = UIEdgeInsetsMake(0.0f, 0.0f, self.tabBarController.tabBar.frame.size.height, 0.0f);
    [self.alertTableView setScrollIndicatorInsets:UIEdgeInsetsMake(0.0f, 0.0f, self.tabBarController.tabBar.frame.size.height, 0.0f)];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [myAlerts count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *simpleTableIdentifier = @"SimpleTableCell";
    
    UITableViewCell *cell = (UITableViewCell *)[tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTableIdentifier];
    }
    
    //    cell.textLabel.text = [myClasses objectAtIndex:indexPath.row];
    cell.textLabel.text = [myAlerts objectAtIndex:indexPath.row];
    return cell;
}

@end
