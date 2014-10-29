//
//  MAAddMedicationViewController.m
//  ExampleProject
//
//  Created by Joseph Constantakis on 10/29/14.
//  Copyright (c) 2014 Jinatum. All rights reserved.
//

#import "MAAddMedicationViewController.h"
#import "MAAppDelegate.h"
#import "MAMedication.h"
#import "MAUser.h"

@interface MAAddMedicationViewController ()

@property (nonatomic, strong) IBOutlet UITextField *nameField;

@end


@implementation MAAddMedicationViewController

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    MAMedication *newMed = [MAMedication new];
    newMed.name = self.nameField.text;
    newMed.dosage = @0;
    APPDELEGATE.currentUser.medications = [APPDELEGATE.currentUser.medications arrayByAddingObject:newMed];
    [APPDELEGATE.currentUser saveMedications];
}

@end
