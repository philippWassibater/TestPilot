//
//  TestPilot.h
//  TestPilot
//
//  Created by Jon Crooke on 08/02/2013.
//  Copyright (c) 2013 joncrooke. All rights reserved.
//

#import <TargetConditionals.h>

#import <SenTestingKit/SenTestingKit.h>
#import <OCMock/OCMock.h>

//#if !TARGET_CPU_X86
//#error Cannot build for iOS device
//#endif

#define HC_SHORTHAND

#if TARGET_IPHONE_SIMULATOR
//#import "OCHamcrest.h"
//#import <OCHamcrestIOS/OCHamcrestIOS.h>
#import <OCHamcrest/OCHamcrest.h>
#endif

#if TARGET_OS_MAC
//#import <OCHamcrest/OCHamcrest.h>
#endif

