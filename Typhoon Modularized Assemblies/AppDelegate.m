//
//  AppDelegate.m
//  Typhoon Modularized Assemblies
//

#import "AppDelegate.h"
#import "AppAssembly.h"
#import "ApplicationHelper.h"
#import "AnotherHelper.h"

@interface AppDelegate ()
@property (strong, nonatomic) InjectedClass(UIApplication) application;
@property (strong, nonatomic) InjectedClass(ApplicationHelper) applicationHelper;
@property (strong, nonatomic) InjectedClass(AnotherHelper) anotherHelper;
@end

@implementation AppDelegate

- (void)performInject {
    AppAssembly *assembly = [[AppAssembly new] activated];

    NSLog(@"Before [AppAssembly inject:]");
    [assembly inject:self];
    NSLog(@"After [AppAssembly inject:]");

    NSLog(@"Injected application: %@", self.application);
    NSLog(@"Injected applicationHelper: %@", self.applicationHelper);
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    NSLog(@"Enter application:didFinishLaunchingWithOptions:");

    NSLog(@"Before performInject");
    [self performInject];
    NSLog(@"After performInject");

    NSLog(@"Exit application:didFinishLaunchingWithOptions:");
    return YES;
}


#pragma mark - UISceneSession lifecycle


- (UISceneConfiguration *)application:(UIApplication *)application configurationForConnectingSceneSession:(UISceneSession *)connectingSceneSession options:(UISceneConnectionOptions *)options {
    // Called when a new scene session is being created.
    // Use this method to select a configuration to create the new scene with.
    return [[UISceneConfiguration alloc] initWithName:@"Default Configuration" sessionRole:connectingSceneSession.role];
}


- (void)application:(UIApplication *)application didDiscardSceneSessions:(NSSet<UISceneSession *> *)sceneSessions {
    // Called when the user discards a scene session.
    // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
    // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
}


@end
