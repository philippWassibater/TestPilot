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

#import <Stubbilino.h>

#import "TPMatchers.h"

#pragma mark -
#pragma mark Macros

/**
 -[NSObject performSelector:] methods issue a warning because Clang can't check
 the implied memory management semantics of methods transfer ownership to the
 call (think alloc, copy, mutableCopy, new...). If you know the perom is safe,
 wrap the expression with this macro to silence the warning.
 */
#define TP_SAFE_PERFORM_SELECTOR(expression) \
_Pragma("clang diagnostic push") \
_Pragma("clang diagnostic ignored \"-Warc-performSelector-leaks\"") \
expression; \
_Pragma("clang diagnostic pop")

#define TPIsEqual(x, y) ((x && [x isEqual:y]) || (!x && !y))

#define assertTrue(expression)    STAssertTrue(expression, nil)
#define assertFalse(expression)   STAssertFalse(expression, nil)

#define assertNil(expression)     STAssertNil(expression, nil)
#define assertNotNil(expression)  STAssertNotNil(expression, nil)

