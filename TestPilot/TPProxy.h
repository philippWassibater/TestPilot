//
//  TPProxy.h
//  TestPilot
//
//  Created by Jon Crooke on 16/02/2013.
//  Copyright (c) 2013 joncrooke. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 Logs and ignores unrecognized selectors, but forwards recognized selectors
 to optional target object.

 #define TPPROXY_LOG to see logs.
 */

@interface TPProxy : NSProxy

@property (strong, readonly) id target;

- (id) init;
- (id) initWithTarget:(id) target;

@end
