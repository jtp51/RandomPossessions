//
//  Possession.h
//  RandomPossessions
//
//  Created by Todd Patrick on 12/10/13.
//  Copyright (c) 2013 Todd Patrick. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Possession : NSObject
{
    NSString *possessionName;
    NSString *serialNumber;
    int valueInDollars;
    NSDate *dateCreated;
}

+ (id)randomPossession;

-(id) initWithPossessionName:(NSString *)name
              valueInDollars:(int)value
                serialNumber:(NSString *)sNumber;

-(id) initWithPossessionName:(NSString *)name;

@property NSString *possessionName;
@property NSString *serialNumber;
@property int valueInDollars;
@property NSDate *dateCreated;

@end
