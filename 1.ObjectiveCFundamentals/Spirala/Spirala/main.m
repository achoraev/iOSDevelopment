
#import <Foundation/Foundation.h>

void PrintSpiral(NSArray *matrix){
    NSMutableString *buffer = [[NSMutableString alloc] init];
    for (NSArray *row in matrix) {
        for (NSNumber *cell in row) {
            [buffer appendFormat:@"%3d", [cell intValue]];
        }
        [buffer appendString:@"\n"];
    }
    
    NSLog(@"\n%@", buffer);
}

NSArray* FillSpiral (int num){
    NSMutableArray *matrix = [[NSMutableArray alloc] initWithCapacity:num];
    int row = 0;
    int col = 0;
    NSString *direction = @"right";
    int maxRotations = num * num;
    // fill with null
    for (int i =0; i < num; i++) {
        matrix[i] = [[NSMutableArray alloc] initWithCapacity:num];
        for (int j=0; j < num; j++) {
            matrix[i][j] = [NSNull null];
        }
    }
    
    for (int counter = 1; counter <= maxRotations; counter++)
    {
        if ([direction isEqual: @"down"] && (row > num - 1 || [matrix[row][col] isNotEqualTo: [NSNull null]]))
        {
            direction = @"left";
            row--;
            col--;
        }
        if ([direction isEqual: @"right"] && (col > num - 1 || [matrix[row][col] isNotEqualTo: [NSNull null]]))
        {
            direction = @"down";
            col--;
            row++;
        }
        if ([direction isEqual: @"up"] && (row < 0 || [matrix[row][col] isNotEqualTo: [NSNull null]]))
        {
            direction = @"right";
            row++;
            col++;
        }
        if ([direction isEqual: @"left"] && (col < 0 || [matrix[row][col] isNotEqualTo: [NSNull null]]))
        {
            direction = @"up";
            col++;
            row--;
        }
        
        matrix[row][col] = [NSNumber numberWithInt:counter];
        
        
        if ([direction isEqual: @"down"])
        {
            row++;
        }
        if ([direction isEqual: @"right"])
        {
            col++;
        }
        if ([direction isEqual: @"up"])
        {
            row--;
        }
        if ([direction isEqual: @"left"])
        {
            col--;
        }
    }
    return matrix;
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSArray *final = FillSpiral(6);
        PrintSpiral(final);
    }
    return 0;
}
