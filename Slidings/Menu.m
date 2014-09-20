//
//  Menu.m
//  Slidings
//
//  Created by Rahul on 20/08/14.
//  Copyright (c) 2014 Rahul. All rights reserved.
//

#import "Menu.h"
#import "Slides.h"
#import "Ringtone.h"
#import "About.h"
#import "Mp3.h"

@interface Menu ()
{
    Ringtone * ring;
    Slides * slide;
    About * about;
}

@end

@implementation Menu

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
    // Do any additional setup after loading the view from its nib.
 
    MenuItems = @[@"Photos",@"Ringtone",@"Mp3",@"About"];
    
}


//- (UIStatusBarStyle)preferredStatusBarStyle
//{
//    return UIStatusBarStyleLightContent;
//}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return MenuItems.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString * cellidentifier = @"Cell";
    
    UITableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:cellidentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellidentifier];
        
        cell.textLabel.text = [NSString stringWithFormat:@"%@",[MenuItems objectAtIndex:indexPath.row]];
    }
    if (indexPath.row == 1)
    {
        // UIImage * imagvw = [UIImage imageNamed:@"<#string#>"];
    }
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    switch (indexPath.row) {
        case 0:
            self.sideMenuViewController.contentViewController = [[UINavigationController alloc] initWithRootViewController:[[Slides alloc] init]];
            [self.sideMenuViewController hideMenuViewController];
            break;
        case 1:
            [self.sideMenuViewController setContentViewController:[[UINavigationController alloc] initWithRootViewController:[[Ringtone alloc] init]]
                                                         animated:YES];
            [self.sideMenuViewController hideMenuViewController];
            break;
        case 2:
            self.sideMenuViewController.contentViewController = [[UINavigationController alloc] initWithRootViewController:[[Mp3 alloc] init]];
            [self.sideMenuViewController hideMenuViewController];
            break;
            
        case 3:
            self.sideMenuViewController.contentViewController = [[UINavigationController alloc] initWithRootViewController:[[About alloc] init]];
            [self.sideMenuViewController hideMenuViewController];
            break;
            
        default:
            break;
    }
    
}

- (void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath
{
     cell.backgroundColor = [UIColor clearColor];
     cell.textColor = [UIColor whiteColor];
        //cell.textColor = [UIColor colorWithRed:116 green:176 blue:232 alpha:0.0f];
    
}

@end
