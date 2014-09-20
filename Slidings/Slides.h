//
//  Slides.h
//  Slidings
//
//  Created by Rahul on 20/08/14.
//  Copyright (c) 2014 Rahul. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SlideImageView.h"
#import "RESideMenu.h"
#import "PicSelect.h"

@interface Slides : UIViewController <SlideImageViewDelegate,RESideMenuDelegate>
{
    
    SlideImageView * slidesimage;
    UILabel * indexLabel;
    UILabel * clickLabel;
    UIButton * menus;
    NSString* indexStr;
    NSString* imageName;
}

@property (nonatomic,strong) NSString* indexStr;
@property (nonatomic,strong) NSString* imageName;


@end
