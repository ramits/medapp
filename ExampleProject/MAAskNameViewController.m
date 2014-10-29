//
//  CViewController.m
//  ExampleProject
//
//  Created by Ramit Saraswat  on 10/2/14.
//  Copyright (c) 2014 Jinatum. All rights reserved.
//

#import "MAAskNameViewController.h"
#import "MAAppDelegate.h"
#import "MAUser.h"

@interface MAAskNameViewController ()

@property (nonatomic, strong) IBOutlet UITextField *nameField;

@end


@implementation MAAskNameViewController

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setObject:self.nameField.text forKey:@"Username"];
    
    MAUser *newUser = [MAUser new];
    newUser.name = self.nameField.text;
    [newUser loadMedications];
    APPDELEGATE.currentUser = newUser;
}

@end
