//
//  Calculator.h
//  Calculator
//
//  Created by Admin on 25/10/14.
//  Copyright (c) 2014 Admin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Calculator : NSObject

    @property (readonly) double result;

    -(void) Add: (double) value;
    -(void) Divide: (double) value;
    -(void) Substract: (double) value;
    -(void) Multiply: (double) value;
    -(void) printResult;
    -(void) clear;
@end