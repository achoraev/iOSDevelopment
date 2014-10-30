#import <Foundation/Foundation.h>

@class TodoList;

@interface TodoManager : NSObject

-(void) addTodo:(TodoList *) TodoList;
-(NSArray *) listAll;

@end