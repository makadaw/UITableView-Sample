//
//  TableViewController.h
//  UITableView-Sample
//
//  Created by mak on 17.01.13.
//  Copyright (c) 2013 ITc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TableViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>

@property (weak) IBOutlet UITableView *tableView;

@end
