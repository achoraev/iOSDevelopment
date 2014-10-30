#import <Foundation/Foundation.h>

@interface TodoList : NSObject

@property NSString *title;
@property NSDate *endDate;

+(id) initWithTitle: (NSString *) title
            andDate: (NSDate *) endDate;

-(NSString *) description;

@end