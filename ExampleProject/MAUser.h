//
//  MAUser.h
//  ExampleProject
//
//  Created by Ramit Saraswat on 10/29/14.
//  Copyright (c) 2014 Jinatum. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MAUser : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSArray *medications;
@property (nonatomic, strong) NSArray *contacts;

- (void)saveMedications;
- (void)loadMedications;

@end
