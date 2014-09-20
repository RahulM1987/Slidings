//
//  Menu.h
//  Slidings
//
//  Created by Rahul on 20/08/14.
//  Copyright (c) 2014 Rahul. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Menu : UIViewController
{
    NSArray * MenuItems;
}

@property (strong, nonatomic) IBOutlet UITableView *tables;

@end
