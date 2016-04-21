//
//  LotteryTicket.m
//  Jackpot 2
//
//  Created by Ade Cummins on 20/04/2016.
//  Copyright © 2016 Ade Cummins. All rights reserved.
//

#import "LotteryTicket.h"

@implementation LotteryTicket
-(instancetype)initWithRandomNumbers
{
    if (self = [super init]){
        NSMutableArray *randomNumbers = [NSMutableArray array];
        for (int i=0; i<6; i++) {
            long number = arc4random_uniform(53);
            [randomNumbers addObject:[NSNumber numberWithLong:number]];
            NSLog(@"RN: is %@ ", randomNumbers);
            NSLog(@"N: is %lu ", number);
        }
        _lotteryNumbers = randomNumbers;
    }
    NSLog(@"Ticket: %@", _lotteryNumbers);
    return self;
}

@end
