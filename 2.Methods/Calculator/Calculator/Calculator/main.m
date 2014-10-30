#import <Foundation/Foundation.h>
#import "Calculator.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Calculator *newCalc = [[Calculator alloc] init];
        
        [newCalc Add:5.5];
        [newCalc Substract:2.0];
        [newCalc printResult];
        
        [newCalc Add:9.0];
        [newCalc Divide:3.0];
        [newCalc Substract:1.0];
        [newCalc printResult];
    }
    return 0;
}