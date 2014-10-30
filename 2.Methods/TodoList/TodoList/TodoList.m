#import "TodoList.h"

@implementation TodoList

+(id) initWithTitle:(NSString *)title
            andDate:(NSDate *)endDate{
    TodoList *todo = [[TodoList alloc] init];
    todo.title = title;
    todo.endDate = endDate;
    return todo;
}

-(NSString*) description {
    return [NSString stringWithFormat:@"Todo: %@, End Date: %@", self.title, self.endDate];
}

@end