//
//  NewTest.m
//  NewTest
//
//  Created by fpmi on 26.09.15.
//  Copyright (c) 2015 fpmi. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import <XCTest/XCTest.h>
#import "PYFruit.h"
#import "PYKiwi.h"
#import "PYOrange.h"
#import "PYPeach.h"
#import "PYBasket.h"
#import "PYFruitIterator.h"
#import "PYTwoWayFruitIterator.h"
@interface NewTest : XCTestCase

@end

@implementation NewTest

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    // This is an example of a functional test case.
    XCTAssert(YES, @"Pass");
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}
-(void)testIteratorFirst{   PYOrange *orange = [[PYOrange alloc] initWithWeight:200 AndSeeds: 10];
    PYKiwi *kiwi = [[PYKiwi alloc] initWithWeight:100 AndSweet:true];
    PYPeach *peach = [[PYPeach alloc]initWithWeight:150 AndCountry:@"Belarus"];
    PYBasket *basket = [[PYBasket alloc]init];
    [basket putFruit:orange];
    [basket putFruit:kiwi];
    [basket putFruit:peach];
    [basket putFruit:kiwi];
    [basket putFruit:orange];
    [basket putFruit:peach];
    PYFruit *aFruit;
    PYFruitIterator *iterator = [basket receiveIterator];
    while(iterator.hasNext)
    {
        aFruit = iterator.next;
    }
    XCTAssertFalse([iterator hasNext]);
    XCTAssertTrue(aFruit!=nil);
}
-(void)testIteratorSecond{
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
    PYFruit *aFruit;
    PYTwoWayFruitIterator *iterator = [basket receiveCrazyIterator];
    while(iterator.hasNext)
    {
        aFruit = iterator.next;
    }
    XCTAssertFalse([iterator hasNext]);
    XCTAssertTrue(aFruit!=nil);
}
@end
