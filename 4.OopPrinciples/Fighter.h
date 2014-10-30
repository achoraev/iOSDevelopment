//
//  Fighter.h
//  MortalKombat
//
//  Created by Admin on 29/10/14.
//  Copyright (c) 2014 Admin. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol Fighter

- (void)punch:(id)opponent;
- (void)kick:(id)opponent;

@property int power;

@end