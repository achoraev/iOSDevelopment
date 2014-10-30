//
//  Jade.m
//  MortalKombat
//
//  Created by Admin on 29/10/14.
//  Copyright (c) 2014 Admin. All rights reserved.
//

#import "Jade.h"

@implementation Jade

-(void)throwPoison:(Character *)opponent{
    NSLog(@"%@ throw poison against %@", self.name, opponent.name);
}
@end