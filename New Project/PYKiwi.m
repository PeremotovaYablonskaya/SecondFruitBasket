//
//  PYKiwi.m
//  SecondFruitBasket
//
//  Created by fpmi on 19.09.15.
//  Copyright (c) 2015 fpmi. All rights reserved.
//

#import "PYKiwi.h"

@implementation PYKiwi
-(id)initWithWeight:(int)aWeight AndSweet: (BOOL)sweet{
    self=[super initWithWeight:aWeight];
    if(self){
        _isSweet = sweet;
    }
    return self;
}
-(void)showInfo{
    NSString *str;
    self.isSweet? (str = @" Sweet"):(str = @" Sour");
    NSLog(@"Kiwi, weight: %d%@", self.weight,str);
    
}
@end
