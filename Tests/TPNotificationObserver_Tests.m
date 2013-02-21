//
//  TPNotificationObserver_Tests.m
//  TestPilot
//
//  Created by Jon Crooke on 21/02/2013.
//  Copyright (c) 2013 joncrooke. All rights reserved.
//

#import "TestPilot.h"
#import "TPNotificationObserver.h"

@interface TPNotificationObserver_Tests : SenTestCase
@end

@implementation TPNotificationObserver_Tests

- (void)testEquality
{
  TPNotificationObserver *a = [TPNotificationObserver observerWithObserver:@"foo"
                                                                  selector:@selector(length)
                                                                      name:@"bar"
                                                                    object:@"bazzle"];
  TPNotificationObserver *b = [TPNotificationObserver observerWithObserver:@"foo"
                                                                  selector:@selector(length)
                                                                      name:@"bar"
                                                                    object:@"bazzle"];

  assertFalse(a == b);
  assertThat(a, equalTo(b));
  assertTrue(a.hash == b.hash);
}

@end
