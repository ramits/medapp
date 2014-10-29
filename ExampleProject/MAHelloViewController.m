//
//  MAHelloViewController.m
//  ExampleProject
//
//  Created by Ramit Saraswat on 10/29/14.
//  Copyright (c) 2014 Jinatum. All rights reserved.
//

#import "MAHelloViewController.h"

@interface MAHelloViewController ()

@property (nonatomic, weak) IBOutlet UILabel *helloLabel;

@end

@implementation MAHelloViewController

- (void)viewWillAppear:(BOOL)animated
{
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    self.helloLabel.text = [NSString stringWithFormat:@"Hi %@", [defaults stringForKey:@"Username"]];
}

@end
