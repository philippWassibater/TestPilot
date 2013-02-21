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

//- (BOOL) isEqualToNotificationObserver:(TPNotificationObserver*)observer;


@end
