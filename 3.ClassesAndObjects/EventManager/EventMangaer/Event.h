#import <Foundation/Foundation.h>

@interface Event : NSObject

+(instancetype)eventWithTitle: (NSString *) title
                     category: (NSString *) category
                         date: (NSDate *) date;

-(instancetype)initEventWithTitle: (NSString *) title
                         category: (NSString *) category
                             date: (NSDate *) date;

@property (nonatomic, copy) NSString *title, *category, *info;
@property (nonatomic, strong) NSDate *date;
@property (nonatomic, strong) NSMutableArray *guests;

@end