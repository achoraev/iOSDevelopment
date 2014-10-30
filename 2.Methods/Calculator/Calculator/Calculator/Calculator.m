#import "Calculator.h"

@implementation Calculator {
    NSMutableString *_finalResult;
}

-(instancetype) init {
    self = [super init];
    if(self){
        _finalResult = [[NSMutableString alloc] init];
        [self clear];
    }
    return self;
}

-(void) clear{
    _result = 0;
    [_finalResult setString:@"0"];
}

-(void) Add:(double)value{
    [_finalResult appendFormat:@" + %.2f",value];
    _result += value;
}

-(void) Substract:(double)value{
    [_finalResult appendFormat:@" - %.2f",value];
    _result -= value;
}

-(void) Divide:(double)value{
    [_finalResult appendFormat:@" / %.2f",value];
    _result /= value;
}

-(void) Multiply:(double)value{
    [_finalResult appendFormat:@" * %.2f",value];
    _result *= value;
}

- (void)printResult {
    [_finalResult appendFormat:@" = %.2f", _result];
    NSLog(@"%@", _finalResult);
    [self clear];
}


@end
