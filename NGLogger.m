//
//  NGLogger.m
//  NGLoggerTest1
//
//  Created by Natan Locatelli Gorin on 12/11/14.
//  Copyright (c) 2014 Natan Gorin. All rights reserved.
//

#import "NGLogger.h"

@implementation NGLogger

+ (void)setPermittedKeys:(NSArray *)newPermittedKeys {
    [[NSUserDefaults standardUserDefaults] setObject:newPermittedKeys forKey:@"NGLoggerKeys"];
    [[NSUserDefaults standardUserDefaults] synchronize];
}

+ (NSArray *)permittedGroups {
    return [[NSUserDefaults standardUserDefaults] arrayForKey:@"NGLoggerKeys"];
}

+ (void)log:(NSString *)logString forGroup:(NSString *)group {
    if ([[self permittedGroups] containsObject:group]) {
        NSLog(@"%@", logString);
    }
}

@end
