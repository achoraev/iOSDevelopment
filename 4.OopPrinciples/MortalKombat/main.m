//
//  main.m
//  MortalKombat
//
//  Created by Admin on 29/10/14.
//  Copyright (c) 2014 Admin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Baraka.h"
#import "Cyrax.h"
#import "Ermac.h"
#import "Goro.h"
#import "Jade.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Baraka *barac = [Baraka characterWithName:@"Barak"];
        Cyrax *cyrax = [Cyrax characterWithName:@"Cyrax"];
        Ermac *ermac = [Ermac characterWithName:@"Ermac"];
        Goro *goro = [Goro characterWithName:@"Master Goro"];
        Jade *jade = [Jade characterWithName:@"Jade"];
        
        [barac run:cyrax];
        [cyrax freeze:ermac];
        [ermac kicking:cyrax];
        [goro invisible];
        [jade throwPoison:barac];
    }
    return 0;
}