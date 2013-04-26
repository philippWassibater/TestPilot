//
//  TPURLStringMatcher.h
//  TwelveInchRSS
//
//  Created by Jon Crooke on 27/02/2013.
//  Copyright (c) 2013 jc. All rights reserved.
//

#import <OCHamcrest/HCBaseMatcher.h>

OBJC_EXPORT id<HCMatcher> HC_equalToURLString(NSString *string);

#ifdef HC_SHORTHAND
#define equalToURLString(string) HC_equalToURLString(string)
#endif

@interface TPURLStringMatcher : HCBaseMatcher
- (instancetype) initWithURLString:(NSString*) string;
@end


