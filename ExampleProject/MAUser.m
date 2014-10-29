//
//  MAUser.m
//  ExampleProject
//
//  Created by Joseph Constantakis on 10/29/14.
//  Copyright (c) 2014 Jinatum. All rights reserved.
//

#import "MAUser.h"
#import "MAMedication.h"

@implementation MAUser

- (void)saveMedications
{
    NSArray *dictionaries = [self.medications valueForKey:@"dictionaryValue"];
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setObject:dictionaries forKey:@"Medications"];
    [defaults synchronize];
}

- (void)loadMedications
{
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    NSArray *dictionaries = [defaults arrayForKey:@"Medications"];
    NSMutableArray *medications = [NSMutableArray array];
    for (NSDictionary *dict in dictionaries) {
        [medications addObject:[MAMedication modelWithDictionary:dict error:nil]];
    }
    self.medications = medications;
}

@end
