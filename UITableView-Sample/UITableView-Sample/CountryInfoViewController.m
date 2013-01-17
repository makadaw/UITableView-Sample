//
//  CountryInfoViewController.m
//  UITableView-Sample
//
//  Created by mak on 17.01.13.
//  Copyright (c) 2013 ITc. All rights reserved.
//

#import "CountryInfoViewController.h"

@interface CountryInfoViewController ()

@end

@implementation CountryInfoViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = @"Country Info";
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.contryNameLabel.text = self.countryName;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
