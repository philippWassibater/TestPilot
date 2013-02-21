//
//  TPNotificationObserver.h
//  TestPilot
//
//  Created by Jon Crooke on 21/02/2013.
//  Copyright (c) 2013 joncrooke. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TPNotificationObserver : NSObject

@property (strong, readonly) id observer;
@property (assign, readonly) SEL selector;
@property (copy, readonly) NSString *name;
@property (strong, readonly) id object;

+ (TPNotificationObserver*) observerWithObserver:(id) observer
                                        selector:(SEL)aSelector
                                            name:(NSString *)aName
                                          object:(id)anObject;

- (id)initWithObserver:(id) observer
              selector:(SEL)aSelector
                  name:(NSString *)aName
                object:(id)anObject;

- (BOOL) isEqualToNotificationObserver:(TPNotificationObserver*)other;

@end
