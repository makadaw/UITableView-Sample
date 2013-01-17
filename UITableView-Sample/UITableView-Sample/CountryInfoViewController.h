//
//  CountryInfoViewController.h
//  UITableView-Sample
//
//  Created by mak on 17.01.13.
//  Copyright (c) 2013 ITc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CountryInfoViewController : UIViewController
@property (weak) IBOutlet UILabel *contryNameLabel;

@property (strong) NSString *countryName;

@end
