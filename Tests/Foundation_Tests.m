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

- (void)testMocks
{
  id mock = [OCMockObject niceMockForClass:[NSString class]];
  [mock verify];
}

@end
