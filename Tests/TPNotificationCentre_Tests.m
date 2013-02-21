//
//  TPNotificationCentre_Tests.m
//  TestPilot
//
//  Created by Jon Crooke on 21/02/2013.
//  Copyright (c) 2013 joncrooke. All rights reserved.
//

#import "TestPilot.h"
#import "TPNotificationCentre.h"

@interface TPNotificationCentre_Tests : SenTestCase
@property (strong) TPNotificationCentre *centre;
@end

@implementation TPNotificationCentre_Tests

- (void)testThrowExceptionOnNonNotificationCenterArgument
{
  STAssertThrows([[TPNotificationCentre alloc] initWithTarget:@""], @"");
}

#pragma mark -

- (void)setUp {
  self.centre = [[TPNotificationCentre alloc] init];
}

- (void)tearDown {
  self.centre = nil;
}

@end
