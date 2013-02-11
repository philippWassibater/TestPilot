//
//  Foundation_Tests.m
//  TestPilot
//
//  Created by Jon Crooke on 08/02/2013.
//  Copyright (c) 2013 joncrooke. All rights reserved.
//

#import "TestPilot.h"

@interface Foundation_Tests : SenTestCase
@end

@implementation Foundation_Tests

- (void)testOCMock
{
  id mock = [OCMockObject niceMockForClass:[NSString class]];
  [mock verify];
}

- (void)testHamcrest
{
  assertThat(nil, nilValue());
}

- (void)testMockito
{
  id mock = mock([NSString class]);
  STAssertNotNil(mock, @"");
}

- (void)testKiwi
{
  id mock = [NSString mock];
  STAssertNotNil(mock, @"");
}

- (void)testStubbilino
{
  [Stubbilino stubClass:[NSString class]];
  [Stubbilino unstubClass:[NSString class]];
}

@end
