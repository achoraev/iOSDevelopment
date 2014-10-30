//
//  Character.h
//  MortalKombat
//
//  Created by Admin on 29/10/14.
//  Copyright (c) 2014 Admin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Fighter.h"
#import "Living.h"

@interface Character : NSObject <Fighter, Living>

+ (instancetype)characterWithName:(NSString *)name;

- (instancetype)initWithName:(NSString *)name;

@property (nonatomic, copy) NSString *name;

@end