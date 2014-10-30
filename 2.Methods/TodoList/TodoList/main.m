#import <Foundation/Foundation.h>
#import "TodoList.h"
#import "TodoManager.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        TodoManager *todoManager = [[TodoManager alloc] init];
        NSDateFormatter *dateFormater = [[NSDateFormatter alloc]
                                         initWithDateFormat: @"%b %d %Y"
                                         allowNaturalLanguage:NO];
//        NSDateFormatter* dateFormater = [[[NSDateFormatter alloc] init] autorelease];
//        dateFormater.dateFormat = @"mm-dd-yyyy";
        
        TodoList *todoHomework = [TodoList initWithTitle: @"Homework Methods"
                                                 andDate: [dateFormater dateFromString: @"Oct 26 2014"]];
        
        TodoList *todoHomeworkClasses = [TodoList initWithTitle: @"Homework Classes"
                                                 andDate: [dateFormater dateFromString: @"Oct 27 2014"]];
        
        [todoManager addTodo:todoHomework];
        [todoManager addTodo:todoHomeworkClasses];
        
        NSLog(@"%@", [todoManager listAll]);
    
    }
    return 0;
}