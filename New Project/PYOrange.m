//
//  PYOrange.m
//  SecondFruitBasket
//
//  Created by fpmi on 19.09.15.
//  Copyright (c) 2015 fpmi. All rights reserved.
//

#import "PYOrange.h"

@implementation PYOrange
-(id)initWithWeight:(int)aWeight AndSeeds: (int)seeds{
    self=[super initWithWeight:aWeight];
    if(self){
        _numberOfSeeds = seeds;
    }
    return self;
}
-(void)showInfo{
    NSLog(@"Orange, weight: %d, Number of Seeds: %d", self.weight, self.numberOfSeeds);
}
@end
