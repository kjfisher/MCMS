//
//  MagicalCreature.m
//  MCMS
//
//  Created by Kristen L. Fisher on 5/20/14.
//  Copyright (c) 2014 Mobile Makers. All rights reserved.
//

#import "MagicalCreature.h"

@implementation MagicalCreature


-(MagicalCreature *) initWithName: (NSString *) name description: (NSString *) description theCreaturesImage:(UIImage *)theCreaturesImage;
{
    self.name = name;
    self.description = description;
    self.theCreaturesImage = theCreaturesImage;

    return self;
}

@end
