//
//  AppDelegate.m
//  BlocksTest
//
//  Created by Admin on 2/16/16.
//  Copyright © 2016 Admin. All rights reserved.
//

#import "AppDelegate.h"

typedef void(^OurBlock)(void);

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    /*
    void (^testBlock)(void);
    
    testBlock = ^{
        NSLog(@"test block");
    };
    
    testBlock();
    
    void (^testBlockWithParametr)(NSString*, NSInteger) = ^(NSString* string, NSInteger intValue) {
        NSLog(@"test block with parametrs: %@, %d", string, intValue);
    };
    
    testBlockWithParametr(@"string", 11);
    
    NSString* (^testBlockReturnValue)(NSString*, NSInteger) = ^(NSString* string, NSInteger intValue) {
        return [NSString stringWithFormat:@"test blcok return value: %@, %d", string, intValue];
    };
    
    NSString* result = testBlockReturnValue(@"string", 11);
    
    NSLog(@"%@", result);
    
    __block NSString* testString;
    
    __block NSInteger i = 0;
    
    void (^testBlock2)(void) = ^{
        testString = [NSString stringWithFormat:@"How it is possible? %d", ++i];
        NSLog(@"%@", testString);
    };
    
    testBlock2();
    testBlock2();
    testBlock2();
    */
    
    [self testMethodBlock:^{
        NSLog(@"Block!!!");
    }];
    
    return YES;
}

- (void)testMethodBlock:(OurBlock)testBlock {
    
    NSLog(@"testMethodBlock!");
    
    testBlock();
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
