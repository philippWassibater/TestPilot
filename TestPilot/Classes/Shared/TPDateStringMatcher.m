//
//  TPDateStringMatcher.m
//  TwelveInchRSS
//
//  Created by Jon Crooke on 27/02/2013.
//  Copyright (c) 2013 jc. All rights reserved.
//

#import "TPDateStringMatcher.h"
#import <OCHamcrest/HCDescription.h>

id<HCMatcher> HC_equalToDateString(NSString *string,
                                   NSDateFormatter *formatter)
{
  return [[TPDateFromStringMatcher alloc] initWithString:string
                                               formatter:formatter];
}

@interface TPDateFromStringMatcher ()
@property (copy) NSString *string;
@property (strong) NSDateFormatter *dateFormatter;
@end

@implementation TPDateFromStringMatcher

- (instancetype)initWithString:(NSString *)string {
  return [self initWithString:string formatter:nil];
}
- (instancetype)initWithString:(NSString *)string
                     formatter:(NSDateFormatter *)formatter
{
  if ((self = [super init])) {
    self.string = string;
    self.dateFormatter = formatter;
  }
  return self;
}

- (BOOL)matches:(id)item {
  NSDate *formattedDate = [self.dateFormatter dateFromString:self.string];
  return [formattedDate isEqual:item];
}

- (void)describeTo:(id<HCDescription>)description {
  [description appendText:
   [NSString stringWithFormat:@"Date with the value \"%@\"", self.string]];
}

@end
