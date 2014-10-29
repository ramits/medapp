//
//  CViewController.m
//  ExampleProject
//
//  Created by Jin  on 10/2/14.
//  Copyright (c) 2014 Jinatum. All rights reserved.
//

#import "MAAskNameViewController.h"

@interface MAAskNameViewController ()

@property (nonatomic, strong) IBOutlet UITextField *nameField;

@end


@implementation MAAskNameViewController

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setObject:self.nameField.text forKey:@"Name"];
}

@end
