//
//  TestPilot_Tests.m
//  TestPilot
//
//  Created by Jon Crooke on 21/02/2013.
//  Copyright (c) 2013 joncrooke. All rights reserved.
//

#import "TestPilot.h"

@interface TestPilot_Tests : SenTestCase
@end

@implementation TestPilot_Tests

- (void)testSafeEquals
{
  assertTrue(TPIsEqual(@"foo", @"foo"));

  assertFalse(TPIsEqual(@"foo", @"bar"));
  assertFalse(TPIsEqual(@"bar", @"foo"));

  id a = nil, b = nil;
  assertTrue(TPIsEqual(a, b));
  b = @"";
  assertFalse(TPIsEqual(a, b));
}

- (void)testAssertions
{
  assertTrue(YES);
  assertFalse(NO);
  
  assertNil(nil);
  assertNotNil(@"");
}

@end
