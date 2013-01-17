//
//  TableViewController.m
//  UITableView-Sample
//
//  Created by mak on 17.01.13.
//  Copyright (c) 2013 ITc. All rights reserved.
//

#import "TableViewController.h"
#import "CountryInfoViewController.h"

@interface TableViewController ()
@property (strong) NSArray *values;

@end

@implementation TableViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        [self setUpTableValues];
        self.title = @"Countries list";
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)setUpTableValues
{
    self.values = @[@"Afghanistan", @"Australia", @"Belgium", @"Ukraine", @"United Kingdom"];
}

#pragma mark - DataSource

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    return @"Country header";
}

- (NSString *)tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section
{
    return @"Country footer";
}

//@required
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.values.count;
}

//@required
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cacheIdentifier = @"CellCacheIdent";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cacheIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle
                                      reuseIdentifier:cacheIdentifier];
    }
    cell.textLabel.text = self.values[indexPath.row];
    return cell;
}


#pragma mark - Delegate

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 44;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    CountryInfoViewController *infoVC = [[CountryInfoViewController alloc] init];
    infoVC.countryName = self.values[indexPath.row];
    [self.navigationController pushViewController:infoVC animated:YES];
}

@end
