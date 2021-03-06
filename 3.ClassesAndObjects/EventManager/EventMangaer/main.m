#import <Foundation/Foundation.h>

#import "Event.h"
#import "EventManager.h"

NSArray* createEvents() {
    NSTimeInterval day = 24 * 3600;
    return @[
             [Event eventWithTitle:@"tennis" category:@"sports" date:[NSDate dateWithTimeIntervalSinceNow:3*day]],
             [Event eventWithTitle:@"beer" category:@"social" date:[NSDate dateWithTimeIntervalSinceNow:2*day]],
             [Event eventWithTitle:@"pizza" category:@"food" date:[NSDate dateWithTimeIntervalSinceNow:day]]
             ];
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        EventManager *evManager = [[EventManager alloc] init];
        [evManager addEventsFromArray:createEvents()];
        
        NSLog(@"all events: %@", [evManager eventsAll]);
        NSLog(@"sorted by title: %@", [evManager eventsSortByTitle]);
        NSLog(@"sorted by date: %@", [evManager eventsSortByDate]);
        NSLog(@"social events: %@", [evManager eventsByCategory:@"social"]);
    }
    return 0;
}