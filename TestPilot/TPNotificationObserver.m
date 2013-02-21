//
//  TPNotificationObserver.m
//  TestPilot
//
//  Created by Jon Crooke on 21/02/2013.
//  Copyright (c) 2013 joncrooke. All rights reserved.
//

#import "TPNotificationObserver.h"

@interface TPNotificationObserver ()
@property (strong, readwrite) id observer;
@property (assign, readwrite) SEL selector;
@property (copy, readwrite) NSString *name;
@property (strong, readwrite) id object;
@end

@implementation TPNotificationObserver

+ (TPNotificationObserver*) observerWithObserver:(id) observer
                                        selector:(SEL)aSelector
                                            name:(NSString *)aName
                                          object:(id)anObject
{
  return [[self alloc] initWithObserver:observer
                               selector:aSelector
                                   name:aName
                                 object:anObject];
}

- (id)initWithObserver:(id) observer
              selector:(SEL)aSelector
                  name:(NSString *)aName
                object:(id)anObject
{
  NSParameterAssert(observer);
  NSParameterAssert(aSelector);
  NSParameterAssert(anObject);

  if ((self = [super init])) {
    self.observer = observer;
    self.selector = aSelector;
    self.name = aName;
    self.object = anObject;
  }
  
  return self;
}

- (BOOL)isEqual:(id)object {
  if (self == object) {
    return YES;
  }
  if ([object isKindOfClass:[self class]]) {
    return [self isEqualToNotificationObserver:object];
  }
  return NO;
}

- (BOOL) isEqualToNotificationObserver:(TPNotificationObserver*)other {
  return (
          TPIsEqual(self.object, other.object) &&
          self.selector == other.selector &&
          TPIsEqual(self.name, other.name) &&
          TPIsEqual(self.object, other.object)
          );
}

- (NSUInteger)hash {
  return (
          [self.object hash] ^
          [NSStringFromSelector(self.selector) hash] ^
          [self.name hash] ^
          [self.object hash]
          );
}

@end
