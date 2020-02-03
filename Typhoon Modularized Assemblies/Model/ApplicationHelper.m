//
//  ApplicationHelper.m
//  Typhoon Modularized Assemblies
//

@import UIKit;
#import "ApplicationHelper.h"

@interface ApplicationHelper()
@property (strong, nonatomic) UIApplication * application;
@end

@implementation ApplicationHelper
- (instancetype)initWithApplication:(UIApplication*)application
{
    if(self = [super init]) {
        self.application = application;
    }
    return self;
}
@end
