#import <Foundation/Foundation.h>
#import "Event.h"

@interface EventManager : NSObject

-(void)addEvent:(Event *)event;
-(void)addEventsFromArray:(NSArray *)events;
-(NSArray *)eventsAll;
-(NSArray *)eventsSortByDate;
-(NSArray *)eventsSortByTitle;
-(NSArray *)eventsByCategory: (NSString *)category;

@end