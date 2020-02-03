//
//  AnotherHelper.m
//  Typhoon Modularized Assemblies
//

#import "AnotherHelper.h"

@interface AnotherHelper()
@property (strong, nonatomic) NSString* name;
@end

@implementation AnotherHelper
- (instancetype) initWithName:(NSString*)name {
    if(self = [super init]) {
        self.name = name;
    }
    return self;
}
@end
