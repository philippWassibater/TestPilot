//
//  TPURLStringMatcher.m
//  TwelveInchRSS
//
//  Created by Jon Crooke on 27/02/2013.
//  Copyright (c) 2013 jc. All rights reserved.
//

#import "TPURLStringMatcher.h"

id<HCMatcher> HC_equalToURLString(NSString *string)
{
  return [[TPURLStringMatcher alloc] initWithURLString:string];
}

@interface TPURLStringMatcher ()
@property (copy) NSString *string;
@end

@implementation TPURLStringMatcher

- (instancetype)initWithURLString:(NSString *)string
{
  if ((self = [super init])) {
    self.string = string;
  }
  return self;
}

- (BOOL)matches:(id)item {
  return [[NSURL URLWithString:self.string] isEqual:item];
}

@end
