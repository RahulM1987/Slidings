//
//  Ringtone.m
//  Slidings
//
//  Created by Rahul on 20/08/14.
//  Copyright (c) 2014 Rahul. All rights reserved.
//

#import "Ringtone.h"

@interface Ringtone ()

@end

@implementation Ringtone

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
    self.navigationController.navigationBarHidden = YES;
    self.navigationController.navigationBarHidden = YES;
    [self preferredStatusBarStyle];
    menus = [UIButton buttonWithType:UIButtonTypeCustom];
    UIImage * buttonimage = [UIImage imageNamed:@"app_drawer"];
    [menus setImage:buttonimage forState:UIControlStateNormal];
    menus.frame = CGRectMake(13,30, 32, 32);
    [menus addTarget:self action:@selector(openDrawer:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:menus];

    RETrimControl *trimControl = [[RETrimControl alloc] initWithFrame:CGRectMake(10, (self.view.frame.size.height - 28) / 2.0f, 300, 28)];
    trimControl.length = 200; // 200 seconds
    trimControl.delegate = self;
    [self.view addSubview:trimControl];
}

#pragma mark -
#pragma mark RETrimControlDelegate

- (void)trimControl:(RETrimControl *)trimControl didChangeLeftValue:(CGFloat)leftValue rightValue:(CGFloat)rightValue
{
    NSLog(@"Left = %f, right = %f", leftValue, rightValue);
}



- (void)openDrawer:(id)sender
{
    [self.sideMenuViewController presentMenuViewController];
}

- (UIStatusBarStyle)preferredStatusBarStyle
{
    return UIStatusBarStyleLightContent;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
