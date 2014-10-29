//
//  MAShowMedicationsViewController.m
//  ExampleProject
//
//  Created by Joseph Constantakis on 10/29/14.
//  Copyright (c) 2014 Jinatum. All rights reserved.
//

#import "MAShowMedicationsViewController.h"
#import "MAAppDelegate.h"
#import "MAMedication.h"
#import "MAUser.h"

@implementation MAShowMedicationsViewController

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return APPDELEGATE.currentUser.medications.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"MedicationCell"
                                                            forIndexPath:indexPath];
    MAMedication *med = APPDELEGATE.currentUser.medications[indexPath.row];
    cell.textLabel.text = med.name;
    return cell;
}

@end
