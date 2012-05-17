//
//  UISSSizeValueConverterTests.m
//  UISS
//
//  Created by Robert Wijas on 5/9/12.
//  Copyright (c) 2012 57things. All rights reserved.
//

#import <SenTestingKit/SenTestingKit.h>
#import "UISSFloatValueConverter.h"

@interface UISSFloatValueConverterTests : SenTestCase

@property (nonatomic, strong) UISSFloatValueConverter *converter;

@end

@implementation UISSFloatValueConverterTests

@synthesize converter=_converter;

- (void)setUp;
{
    self.converter = [[UISSFloatValueConverter alloc] init];
}

- (void)tearDown;
{
    self.converter = nil;
}

- (void)testConversionFromNumber;
{
    id value = [self.converter convertPropertyValue:[NSNumber numberWithFloat:0.5f]];
    STAssertTrue([value isKindOfClass:[NSValue class]], nil);
    
    CGFloat floatValue = 0;
    [value getValue:&floatValue];
    
    STAssertEquals(floatValue, 0.5f, nil);
}

@end