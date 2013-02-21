//
//  TPNotificationCentre.m
//  TestPilot
//
//  Created by Jon Crooke on 21/02/2013.
//  Copyright (c) 2013 joncrooke. All rights reserved.
//

#import "TPNotificationCentre.h"

@implementation TPNotificationCentre

- (id)initWithTarget:(id)target {
  if (![target isKindOfClass:[NSNotificationCenter class]]) {
    [NSException raise:[NSString stringWithFormat:@"%@Exception",
                        NSStringFromClass([TPNotificationCentre class])]
                format:@"Should only stub with an instance of NSNotificationCenter"];
  }
  return [super initWithTarget:target];
}

- (id)init {
  return [self initWithTarget:[NSNotificationCenter defaultCenter]];
}

@end
