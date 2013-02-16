//
//  TPProxy.m
//  TestPilot
//
//  Created by Jon Crooke on 16/02/2013.
//  Copyright (c) 2013 joncrooke. All rights reserved.
//

#import "TPProxy.h"

@interface TPProxy ()
+ (NSMethodSignature*)dummyMethodSignature;
@property (strong, readwrite) id target;
@end

@implementation TPProxy

+ (NSMethodSignature*)dummyMethodSignature
{
  static NSMethodSignature *sig = nil;
  static dispatch_once_t onceToken;
  dispatch_once(&onceToken, ^{
    // dummy method signature; prevent NSProxy exception
    sig = [NSMethodSignature signatureWithObjCTypes:"@:"];
  });
  return sig;
}

- (id) init {
  return [self initWithTarget:nil];
}

- (id) initWithTarget:(id) target
{
  self.target = target;
  return self;
}

#pragma mark Instance

- (NSMethodSignature *)methodSignatureForSelector:(SEL)selector
{
  if ([self.target respondsToSelector:selector]) {
    return [self.target methodSignatureForSelector:selector];
  }

#ifdef TPPROXY_LOG
  NSLog(@"%@ ignoring invocation for selector \"%@\"%@",
        NSStringFromClass(self.class),
        NSStringFromSelector(selector),
        self.target ? [NSString stringWithFormat:@", %@", self.target] : @"");
#endif

  return [TPProxy dummyMethodSignature];
}

- (void)forwardInvocation:(NSInvocation *)invocation
{
  if (invocation.methodSignature != [TPProxy dummyMethodSignature]) {
#ifdef TPPROXY_LOG
    NSLog(@"Forwarding invocation from %@ to %@", self, self.target);
#endif
    [invocation invokeWithTarget:self.target];
  } 
}

@end
