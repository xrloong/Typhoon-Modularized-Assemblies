//
//  ModularAssembly.m
//  Typhoon Modularized Assemblies
//

#import "ModularAssembly.h"

@implementation ModularAssembly
- (UIApplication*) application
{
    return [TyphoonDefinition withClass:[UIApplication class] configuration:^(TyphoonDefinition *definition) {
        [definition useInitializer:@selector(sharedApplication)];
    }];
}

- (NSString*) anotherHelperName
{
    return @"AnotherHelper's name";
}
@end
