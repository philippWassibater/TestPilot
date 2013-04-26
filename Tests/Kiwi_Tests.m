//
//  Kiwi_Tests.m
//  TestPilot
//
//  Created by Jon Crooke on 21/03/2013.
//  Copyright (c) 2013 joncrooke. All rights reserved.
//

#import "TestPilot.h"
#import "Kiwi.h"

@interface Kiwi_Tests : SenTestCase
@end

@implementation Kiwi_Tests

- (void) testKiwi {
  STAssertNotNil(NSClassFromString(@"KWSpec"), nil);
}

@end
