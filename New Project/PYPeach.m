//
//  PYPeach.m
//  SecondFruitBasket
//
//  Created by fpmi on 19.09.15.
//  Copyright (c) 2015 fpmi. All rights reserved.
//

#import "PYPeach.h"

@implementation PYPeach
-(id)initWithWeight:(int)aWeight AndCountry: (NSString*)country{
    self=[super initWithWeight:aWeight];
    if(self){
        _countryOfOrigin = [country copy];
    }
    return self;
}
-(void)showInfo{
    NSLog(@"Peach, weight: %d, Country of Origin: %@", self.weight, self.countryOfOrigin);
}
@end
