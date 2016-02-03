#import <Foundation/Foundation.h>



@interface ELDPerson : NSObject

@property (nonatomic, strong) NSString* name;
@property (assign, readwrite) NSUInteger age;

- (instancetype) initWithName: (NSString*) name age: (NSUInteger)age;


@end



