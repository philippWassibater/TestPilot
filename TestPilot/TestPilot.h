//
//  TestPilot.h
//  TestPilot
//
//  Created by Jon Crooke on 08/02/2013.
//  Copyright (c) 2013 joncrooke. All rights reserved.
//

#import <TargetConditionals.h>

#if TARGET_OS_IPHONE && TARGET_OS_EMBEDDED
#error Cannot build for iOS device
#endif

#import <SenTestingKit/SenTestingKit.h>
#import <OCMock/OCMock.h>

#define HC_SHORTHAND
#import <OCHamcrest/OCHamcrest.h>
#define MOCKITO_SHORTHAND
#import <OCMockito/OCMockito.h>

#import <Kiwi.h>
#import <Stubbilino.h>
