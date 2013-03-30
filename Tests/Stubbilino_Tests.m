//
//  Stubbilino_Tests.m
//  TestPilot
//
//  Created by Jonathan Crooke on 30/03/2013.
//  Copyright (c) 2013 joncrooke. All rights reserved.
//

#import "TestPilot.h"
#import <Stubbilino.h>

@interface Stubbilino_Tests : SenTestCase
@end

@implementation Stubbilino_Tests

- (void)testStubbilino
{
  [Stubbilino stubClass:[NSString class]];
  [Stubbilino unstubClass:[NSString class]];
}

@end
