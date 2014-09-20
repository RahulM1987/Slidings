//
//  PicSelect.m
//  ApniMasti
//
//  Created by Rahul on 20/08/14.
//  Copyright (c) 2014 Rahul. All rights reserved.
//

#import "PicSelect.h"
#import <QuartzCore/QuartzCore.h>


@interface PicSelect ()
{
    
    Slides * sld;
}

@end

@implementation PicSelect

@synthesize fullScreen,get,close;

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
    close.layer.cornerRadius = 7.0f;
    fullScreen.image = [UIImage imageNamed:get];
    NSLog(@"%@asdf",get);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)close:(id)sender
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
