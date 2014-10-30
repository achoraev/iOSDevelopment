#import "Event.h"

@implementation Event
+ (instancetype)eventWithTitle:(NSString *)title
                      category:(NSString *)category
                          date:(NSDate *)date {
    
    return [[self alloc] initEventWithTitle:(NSString *)title
                              category:(NSString *)category
                                  date:(NSDate *)date];
}

- (instancetype)init {
    return [self initEventWithTitle:nil category:nil date:nil];
}

- (instancetype)initEventWithTitle:(NSString *)title
                     category:(NSString *)category
                         date:(NSDate *)date {
    self = [super init];
    if (self) {
        _title = [title copy];
        _category = [category copy];
        _date = [date copy];
    }
    return self;
}

- (NSString *)description {
    return [NSString stringWithFormat:@"%@, [%@], %@", self.title, self.category, self.date];
}

@end