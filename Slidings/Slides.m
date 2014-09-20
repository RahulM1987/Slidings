//
//  Slides.m
//  Slidings
//
//  Created by Rahul on 20/08/14.
//  Copyright (c) 2014 Rahul. All rights reserved.
//

#import "Slides.h"


@interface Slides ()
{
    PicSelect * Pics;
}

@end

@implementation Slides

@synthesize indexStr,imageName;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        CGRect rect = {{30,60},{250,440}};
        slidesimage = [[SlideImageView alloc]initWithFrame:rect ZMarginValue:5 XMarginValue:10 AngleValue:0.3 Alpha:1000];
        slidesimage.borderColor = [UIColor whiteColor];
        slidesimage.backgroundColor = [UIColor blackColor];
        slidesimage.delegate = self;
    }
    return self;
}


- (void)loadView
{
    [super loadView];
    [self.view addSubview:slidesimage];
    indexLabel = [[UILabel alloc]initWithFrame:CGRectMake(20, 500, 300, 40)];
    indexLabel.font = [UIFont systemFontOfSize:20.f];
    indexLabel.text = @"Index Label";
    indexLabel.textColor = [UIColor whiteColor];
    [self.view addSubview:indexLabel];
    clickLabel = [[UILabel alloc]initWithFrame:CGRectMake(20, 530, 300, 40)];
    clickLabel.font = [UIFont systemFontOfSize:18.f];
    clickLabel.text = @"Click Label";
    clickLabel.textColor = [UIColor whiteColor];
    [self.view addSubview:clickLabel];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    self.navigationController.navigationBarHidden = YES;
    [self preferredStatusBarStyle];
    menus = [UIButton buttonWithType:UIButtonTypeCustom];
    UIImage * buttonimage = [UIImage imageNamed:@"app_drawer"];
    [menus setImage:buttonimage forState:UIControlStateNormal];
    menus.frame = CGRectMake(13,30, 32, 32);
    [menus addTarget:self action:@selector(openDrawer:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:menus];
    
    for(int i=0; i<6; i++)
    {
        NSString* imageName = [NSString stringWithFormat:@"apple-touch-icon"];
        UIImage* image = [UIImage imageNamed:imageName];
        [slidesimage addImage:image];
    }
    [slidesimage setImageShadowsWtihDirectionX:2 Y:2 Alpha:0.7];
    [slidesimage reLoadUIview];
}

- (void)openDrawer:(id)sender
{
     [self.sideMenuViewController presentMenuViewController];
}

- (UIStatusBarStyle)preferredStatusBarStyle
{
    return UIStatusBarStyleLightContent;
}


- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)SlideImageViewDidClickWithIndex:(int)index
{
    indexStr = [[NSString alloc]initWithFormat:@"Click %d",index];
    clickLabel.text = indexStr;
    imageName = [NSString stringWithFormat:@"apple-touch-icon"];
    UIImage* image = [UIImage imageNamed:imageName];
    
    NSLog(@"naamm:%@",imageName);
    Pics = [[PicSelect alloc]initWithNibName:@"PicSelect" bundle:nil];
    Pics.fullScreen.image = [UIImage imageNamed:imageName];
    Pics.get = [[NSString alloc]initWithString:imageName];
   [self presentViewController:Pics animated:YES completion:nil];
}

- (void)SlideImageViewDidEndScorllWithIndex:(int)index
{
    indexStr = [[NSString alloc]initWithFormat:@"Picture: %d",index];
    indexLabel.text = indexStr;
}

@end
