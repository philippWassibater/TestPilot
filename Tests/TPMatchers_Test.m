//
//  TPMatchers_Test.m
//  TestPilot
//
//  Created by Jon Crooke on 27/02/2013.
//  Copyright (c) 2013 joncrooke. All rights reserved.
//

#import "TestPilot.h"
#import "TPMatchers.h"

@interface TPMatchers_Test : SenTestCase
@end

@implementation TPMatchers_Test

- (void)testURLStringCustomMatcher
{
  NSString *urlString = @"http://news.bbc.co.uk";
  assertThat([NSURL URLWithString:urlString], equalToURLString(urlString));
}

- (void)testDateStringCustomMatcher
{
  NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
  formatter.dateFormat = @"MM/dd/yyyy";
  NSString *string = @"11/23/1937";
  NSDate *date = [formatter dateFromString:string];
  assertNotNil(date);
  assertThat(date, equalToDateString(string, formatter));
}

@end
