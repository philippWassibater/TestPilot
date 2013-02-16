//
//  TTProxy_Tests.m
//  TestPilot
//
//  Created by Jon Crooke on 16/02/2013.
//  Copyright (c) 2013 joncrooke. All rights reserved.
//

#import "TestPilot.h"
#import "TPProxy.h"

@interface TTProxy_Tests : SenTestCase
@property (strong) id proxy;
- (id) messageForwardingMock;
@end

@implementation TTProxy_Tests

- (void)testSwallowUnrecognizedSelectorInstanceMethod
{
  TP_SAFE_PERFORM_SELECTOR(STAssertNoThrow([self.proxy performSelector:
                                            NSSelectorFromString(@"length")], @"");)
}

- (void)testAccessTarget
{
  NSObject *obj = [[NSObject alloc] init];
  self.proxy = [[TPProxy alloc] initWithTarget:obj];
  assertThat([self.proxy target], equalTo(obj));
}

- (void)testProxyMethod
{
  assertThat([self.proxy description],
             equalTo([NSString stringWithFormat:@"<%@: %p>",
                      NSStringFromClass([TPProxy class]), self.proxy]));
}

- (void)testDescriptionWithTarget
{
  id mock = self.messageForwardingMock;
  self.proxy = [[TPProxy alloc] initWithTarget:mock];

  assertThat([self.proxy description],
             equalTo([NSString stringWithFormat:@"<%@: %p> : Target <%@: %p>",
                      NSStringFromClass([TPProxy class]), self.proxy,
                      NSStringFromClass([mock class]), mock
                      ]));
}

- (id) messageForwardingMock
{
  return [OCMockObject mockForClass:[NSString class]];
}

- (void)testForwardMessageInstanceMethod
{
  id mock = self.messageForwardingMock;
  self.proxy = [[TPProxy alloc] initWithTarget:mock];

  [[mock expect] UTF8String];
  [self.proxy UTF8String];
  [mock verify];
}

#pragma mark -

- (void)setUp
{
  self.proxy = [[TPProxy alloc] initWithTarget:nil];
}

- (void)tearDown
{
  self.proxy = nil;
}

@end
