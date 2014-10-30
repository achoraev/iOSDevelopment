#import "TodoManager.h"

@implementation TodoManager{
    NSMutableArray *_todos;
}

- (id)init {
    self = [super init];
    if (self) {
        _todos = [NSMutableArray array];
    }
    return self;
}

-(void) addTodo:(TodoList *)TodoList{
    [_todos addObject:TodoList];
}

-(NSArray *) listAll {
    return _todos;
}
@end