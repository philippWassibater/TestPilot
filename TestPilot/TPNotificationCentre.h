//
//  TPNotificationCentre.h
//  TestPilot
//
//  Created by Jon Crooke on 21/02/2013.
//  Copyright (c) 2013 joncrooke. All rights reserved.
//

#import "TPProxy.h"

typedef (^TPNotificationAddObserverBlock)    (id observer, SEL selector, NSString *name, id object);
typedef (^TPNotificationRemoveObserverBlock) (id observer, NSString *name, id object);

@interface TPNotificationCentre : TPProxy

@property (strong, readonly) NSSet *observers;

@property (strong) TPNotificationAddObserverBlock addObserverBlock;
@property (strong) TPNotificationRemoveObserverBlock removeObserverBlock;

- (void)addObserver:(id)observer
           selector:(SEL)aSelector
               name:(NSString *)aName
             object:(id)anObject;

- (void)removeObserver:(id)observer;
- (void)removeObserver:(id)observer
                  name:(NSString *)aName
                object:(id)anObject;

@end
