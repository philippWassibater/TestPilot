//
//  UIView+TestingOverrides.m
//  TestPilot
//
//  Created by Jonathan Crooke on 01/04/2013.
//  Copyright (c) 2013 joncrooke. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (TestingOverrides) @end

@implementation UIView (TestingOverrides)

+ (void)animateWithDuration:(NSTimeInterval)duration
                      delay:(NSTimeInterval)delay
                    options:(UIViewAnimationOptions)options
                 animations:(void (^)(void))animations
                 completion:(void (^)(BOOL finished))completion
{
  animations ? animations() : nil;
  completion ? completion(YES) : nil;
}

+ (void)animateWithDuration:(NSTimeInterval)duration
                 animations:(void (^)(void))animations
                 completion:(void (^)(BOOL finished))completion
{
  [self animateWithDuration:duration delay:0 options:0 animations:animations completion:completion];
}

+ (void)animateWithDuration:(NSTimeInterval)duration
                 animations:(void (^)(void))animations
{
  [self animateWithDuration:duration delay:0 options:0 animations:animations completion:nil];
}

+ (void)transitionWithView:(UIView *)view
                  duration:(NSTimeInterval)duration
                   options:(UIViewAnimationOptions)options
                animations:(void (^)(void))animations
                completion:(void (^)(BOOL finished))completion
{
  animations ? animations() : nil;
  completion ? completion(YES) : nil;
}

+ (void)transitionFromView:(UIView *)fromView
                    toView:(UIView *)toView
                  duration:(NSTimeInterval)duration
                   options:(UIViewAnimationOptions)options
                completion:(void (^)(BOOL finished))completion
{
  completion ? completion(YES) : nil;
}

@end

#pragma mark -

@interface UIFont (TestingOverrides) @end
@implementation UIFont (TestingOverrides)
+ (UIFont *)fontWithName:(NSString *)fontName size:(CGFloat)fontSize { return nil; }
+ (UIFont *)systemFontOfSize:(CGFloat)fontSize { return nil; }
+ (UIFont *)boldSystemFontOfSize:(CGFloat)fontSize { return nil; }
+ (UIFont *)italicSystemFontOfSize:(CGFloat)fontSize { return nil; }
@end
