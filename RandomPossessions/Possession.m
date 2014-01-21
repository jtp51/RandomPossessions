//
//  Possession.m
//  RandomPossessions
//
//  Created by Todd Patrick on 12/10/13.
//  Copyright (c) 2013 Todd Patrick. All rights reserved.
//

#import "Possession.h"

@implementation Possession

+ (id) randomPossession
{
    NSArray *randomAdjectiveList = [NSArray arrayWithObjects:@"Fluffy",
                                    @"Rusty",
                                    @"Shiny",nil];
    
    NSArray *randomNounList = [NSArray arrayWithObjects:@"Bear",
                               @"Fork",
                               @"Mac",nil];
    
    int adjectiveIndex = rand() % [randomAdjectiveList count];
    int nounIndex = rand() % [randomNounList count];
    
    NSString *randomName = [NSString stringWithFormat:@"%@%@",
                            [randomAdjectiveList objectAtIndex:adjectiveIndex],
                            [randomNounList objectAtIndex:nounIndex]];
    
    int randomValue = rand() % 100;
    
    NSString *randomSerialNumber = [NSString stringWithFormat:@"%c%c%c%c%c",
                                    '0' + rand() % 10,
                                    'A' + rand() % 26,
                                    '0' + rand() % 10,
                                    'A' + rand() % 26,
                                    '0' + rand() % 10];
    
    Possession *newPossession = [[self alloc] initWithPossessionName:randomName valueInDollars:randomValue serialNumber:randomSerialNumber];
    
    return [newPossession autorelease];
}

- (id)initWithPossessionName:(NSString *)name valueInDollars:(int)value serialNumber:(NSString *)sNumber
{
    self = [super init];
    
    if(self)
    {
        [self setPossessionName:name];
        [self setValueInDollars:value];
        [self setSerialNumber:sNumber];
        dateCreated = [[NSDate alloc]init];
    }
    return self;
}

- (id)initWithPossessionName:(NSString *)name
{
    self = [super init];
    
    if(self)
    {
        [self setPossessionName:name];
    }
    return self;
}

- (id) init
{
    return [self initWithPossessionName:@"Posession" valueInDollars:0 serialNumber:@""];
}

-(void)setPossessionName:(NSString *) str
{
    [str retain];
    [possessionName release];
    possessionName = str;
}

-(NSString *)possessionName
{
    return possessionName;
}

-(void)setSerialNumber:(NSString *) str
{
    serialNumber = str;
}

-(NSString *)serialNumber
{
    return serialNumber;
}

-(void)setValueInDollars:(int) i
{
    valueInDollars = i;
}

-(int)valueInDollars
{
    return valueInDollars;
}

-(NSDate *)dateCreated
{
    return dateCreated;
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"%@ (%@): Worth $%d, recorded on %@",
            possessionName,
            serialNumber,
            valueInDollars,
            dateCreated];
}

-(void)dealloc
{
    [possessionName release];
    [serialNumber release];
    [dateCreated release];
    [super dealloc];
}
@end
