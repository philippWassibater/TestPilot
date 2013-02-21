//
//  TPNotificationCentre.m
//  TestPilot
//
//  Created by Jon Crooke on 21/02/2013.
//  Copyright (c) 2013 joncrooke. All rights reserved.
//

#import "TPNotificationCentre.h"
#import "TPNotificationObserver.h"

@interface TPNotificationCentre ()
@property (strong, readwrite) NSSet *observers;
@end

@implementation TPNotificationCentre

- (id)initWithTarget:(id)target {
  if (![target isKindOfClass:[NSNotificationCenter class]]) {
    [NSException raise:[NSString stringWithFormat:@"%@Exception",
                        NSStringFromClass([TPNotificationCentre class])]
                format:@"Should only stub with an instance of NSNotificationCenter"];
  }
  self.observers = [NSSet set];
  
  return [super initWithTarget:target];
}

- (id)init {
  return [self initWithTarget:[NSNotificationCenter defaultCenter]];
}

- (void)addObserver:(id)observer
           selector:(SEL)aSelector
               name:(NSString *)aName
             object:(id)anObject
{
  TPNotificationObserver *newObserver = \
  [TPNotificationObserver observerWithObserver:observer
                                      selector:aSelector
                                          name:aName
                                        object:anObject];
  self.observers = [self.observers setByAddingObject:newObserver];

  [self.target addObserver:observer selector:aSelector name:aName object:anObject];
}

- (void)removeObserver:(id)observer {
  [self removeObserver:observer name:nil object:nil];
}

- (void)removeObserver:(id)observer
                  name:(NSString *)aName
                object:(id)anObject
{
  TPNotificationObserver *removeObserver = \
  [TPNotificationObserver observerWithObserver:observer
                                      selector:NULL
                                          name:aName
                                        object:anObject];

  NSMutableSet *mute = self.observers.mutableCopy;
  [mute removeObject:removeObserver];
  self.observers = mute.copy;

  [self.target removeObserver:removeObserver];

}


@end
