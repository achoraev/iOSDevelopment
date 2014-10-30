//
//  Character.m
//  MortalKombat
//
//  Created by Admin on 29/10/14.
//  Copyright (c) 2014 Admin. All rights reserved.
//

#import "Character.h"

@implementation Character

@synthesize power, life;

+ (instancetype)characterWithName:(NSString *)name {
    return [[self alloc] initWithName:(NSString *)name];
}

- (instancetype)init {
    return [self initWithName:@"Unknown"];
}

- (instancetype)initWithName:(NSString *)name {
    self = [super init];
    if (self) {
        _name = [name copy];
    }
    return self;
}

- (void)punch:(Character *)opponent {
    NSLog(@"Punch!");
    self.power++;
    opponent.power--;
}

- (void)kick:(Character *)opponent {
    NSLog(@"Kick!");
    self.power++;
    opponent.power -= 2;
}

- (BOOL)isAlive {
    return self.power > 0;
}

@end