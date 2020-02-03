//
//  AppAssembly.h
//  Typhoon Modularized Assemblies
//

#import "TyphoonAssembly.h"
#import "ModularAssembly.h"

NS_ASSUME_NONNULL_BEGIN

@interface AppAssembly : TyphoonAssembly
@property(nonatomic, strong, readonly) ModularAssembly* modularAssembly;
@end

NS_ASSUME_NONNULL_END
