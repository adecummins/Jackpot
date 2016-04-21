//
//  LotteryTicket.h
//  Jackpot 2
//
//  Created by Ade Cummins on 20/04/2016.
//  Copyright © 2016 Ade Cummins. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LotteryTicket : NSObject
@property (strong, nonatomic)NSArray *lotteryNumbers;

-(instancetype)initWithRandomNumbers;

@end
