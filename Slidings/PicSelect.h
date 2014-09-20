//
//  PicSelect.h
//  ApniMasti
//
//  Created by Rahul on 20/08/14.
//  Copyright (c) 2014 Rahul. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Slides.h"

@interface PicSelect : UIViewController
{
    UIImageView *fullScreen;
    NSString *get;
}

@property (strong, nonatomic) IBOutlet UIButton *close;
@property (strong, nonatomic) IBOutlet UIImageView *fullScreen;
@property ( strong,nonatomic)  NSString *get;

@end
