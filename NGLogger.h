//
//  NGLogger.h
//  NGLoggerTest1
//
//  Created by Natan Locatelli Gorin on 12/11/14.
//  Copyright (c) 2014 Natan Gorin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NGLogger : NSObject

+ (NSArray *)permittedGroups;

+ (void)log:(NSString *)logString forGroup:(NSString *)group;

+ (void)setPermittedKeys:(NSArray *)newPermittedKeys;

@end
