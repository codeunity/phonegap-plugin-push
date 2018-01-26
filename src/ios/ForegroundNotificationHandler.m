//
//  MyNotificationHandler.m
//  
//
//  Created by Michael Silzle on 25.01.18.
//

#import "ForegroundNotificationHandler.h"

@implementation ForegroundNotificationHandler

UNUserNotificationCenter* notificationCenter;

-(ForegroundNotificationHandler*)init{
    self = [super init];

    notificationCenter = [UNUserNotificationCenter currentNotificationCenter];
    notificationCenter.delegate = self;
    
    return self;
}

#pragma mark UNUserNotificationCenterDelegate

/**
 * Called when a notification is delivered to the app while being in foreground.
 */
- (void) userNotificationCenter:(UNUserNotificationCenter *)center
        willPresentNotification:(UNNotification *)notification
          withCompletionHandler:(void (^)(UNNotificationPresentationOptions))completionHandler
{
    NSLog(@"Message recieved while app was in foreground");
    completionHandler(UNNotificationPresentationOptionAlert);
}

#pragma mark -

@end
