//
//  AppAssembly.m
//  Typhoon Modularized Assemblies
//

#import "AppAssembly.h"
#import "ApplicationHelper.h"
#import "AnotherHelper.h"

@implementation AppAssembly
- (ApplicationHelper*) applicationHelper
{
    return [TyphoonDefinition withClass:[ApplicationHelper class] configuration:^(TyphoonDefinition *definition) {
        [definition useInitializer:@selector(initWithApplication:) parameters:^(TyphoonMethod *initializer) {
            [initializer injectParameterWith:[self.modularAssembly application]];
        }];
    }];
}

- (AnotherHelper*) anotherHelper
{
    return [TyphoonDefinition withClass:[AnotherHelper class] configuration:^(TyphoonDefinition *definition) {
        [definition useInitializer:@selector(initWithName:) parameters:^(TyphoonMethod *initializer) {
            // OK
            [initializer injectParameterWith:[self anotherHelperName]];

            // Crash
            // [initializer injectParameterWith:[self.modularAssembly anotherHelperName]];
        }];
    }];
}

- (NSString*) anotherHelperName
{
    return @"AnotherHelper's name";
}
@end
