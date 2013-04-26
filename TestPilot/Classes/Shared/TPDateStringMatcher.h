//
//  TPDateStringMatcher.h
//  TwelveInchRSS
//
//  Created by Jon Crooke on 27/02/2013.
//  Copyright (c) 2013 jc. All rights reserved.
//

#import <OCHamcrest/HCBaseMatcher.h>

OBJC_EXPORT id<HCMatcher> HC_equalToDateString(NSString *string,
                                               NSDateFormatter *formatter);

#ifdef HC_SHORTHAND
#define equalToDateString(string, formatter) HC_equalToDateString(string, formatter)
#endif

@interface TPDateFromStringMatcher : HCBaseMatcher
- (instancetype) initWithString:(NSString*) string;
- (instancetype) initWithString:(NSString*) string
                      formatter:(NSDateFormatter*) formatter;
@end


