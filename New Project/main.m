//
//  main.m
//  SecondFruitBasket
//
//  Created by fpmi on 19.09.15.
//  Copyright (c) 2015 fpmi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PYOrange.h"
#import "PYKiwi.h"
#import "PYPeach.h"
#import "PYBasket.h"
#import "PYTwoWayFruitIterator.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        PYOrange *orange = [[PYOrange alloc] initWithWeight:200 AndSeeds: 10];
        PYKiwi *kiwi = [[PYKiwi alloc] initWithWeight:100 AndSweet:true];
        PYPeach *peach = [[PYPeach alloc]initWithWeight:150 AndCountry:@"Belarus"];
        PYBasket *basket = [[PYBasket alloc]init];
        [basket putFruit:orange];
        [basket putFruit:kiwi];
        [basket putFruit:peach];
        [basket putFruit:kiwi];
        [basket putFruit:orange];
        [basket putFruit:peach];
        NSLog(@"Good iterator: ");
        PYFruitIterator *iterator = [basket receiveIterator];
        while(iterator.hasNext)
        {
            [iterator.next showInfo];
        }
        NSLog(@"Evil iterator: ");
        PYTwoWayFruitIterator *secondIterator = [basket receiveCrazyIterator];
        while(secondIterator.hasNext)
        {
            [secondIterator.next showInfo];
        }
        [basket release];
        [kiwi release];
        [orange release];
        [peach release];
    }
    return 0;
}
