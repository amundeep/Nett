//
//  SNFirstViewController.m
//  Safety Net
//
//  Created by Amundeep Singh on 9/12/14.
//  Copyright (c) 2014 Amundeep Singh. All rights reserved.
//

#import "SNFirstViewController.h"
#import "SNAlertViewController.h"

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

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
//    UITableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];
//    int indexRow = indexPath.row;
//    NSString *selectedValue = [myAlerts objectAtIndex:indexRow];
//
//    if (!yourObject) {
//        yourObject = [[yourViewController alloc] initWithNibName:@"yourViewController" bundle:nil];
//        
//    }
//    
//    UIBarButtonItem *backBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"Back" style:UIBarButtonItemStylePlain target:nil action:nil];
//    self.navigationItem.backBarButtonItem = backBarButtonItem;
//    [backBarButtonItem release];
//    [self.navigationController pushViewController:yourObject animated:YES];
 
//    UIViewController *newViewController = [[UIViewController alloc] initWithNibName:@"TableCellViewController" bundle:nil];
//    
//    [self.navigationController pushViewController:newViewController animated:YES];
    
//    [self performSegueWithIdentifier:@"segueIdentifier" sender:tableView];
    
    NSLog(@"%s", "Working... ");
//    SNAlertViewController *modalView = [[SNAlertViewController alloc] initWithNibName:@"SNAlertViewController" bundle:nil];
////    modalView.transitioningDelegate = UIModalTransitionStyleCoverVertical;
//    modalView.alertName = [[myAlerts objectAtIndex:indexRow] textLabel].text;
    
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    [self performSegueWithIdentifier:@"tableCellContent" sender:self];
    
    
    
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    NSLog(@"%s", "Did it go here?");
   
}


- (IBAction)unwindToAlerts:(UIStoryboardSegue *)unwindSegue
{
    
    printf("%s", "Is it reaching here? ");
    
}

@end
