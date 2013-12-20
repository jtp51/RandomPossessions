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

-(void)setPossessionName:(NSString *) str;
-(NSString *)possessionName;

-(void)setSerialNumber:(NSString *) str;
-(NSString *)serialNumber;

-(void)setValueInDollars:(int) i;
-(int)valueInDollars;

-(NSDate *)dateCreated;


-(id) initWithPossessionName:(NSString *)name
              valueInDollars:(int)value
                serialNumber:(NSString *)sNumber;

@end
