//
//  MagicalCreature.h
//  MCMS
//
//  Created by Kristen L. Fisher on 5/20/14.
//  Copyright (c) 2014 Mobile Makers. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface MagicalCreature : NSObject
@property NSString *name;
@property NSString *description;
@property UIImage *theCreaturesImage;

-(MagicalCreature *) initWithName: (NSString *) name description: (NSString *) description theCreaturesImage:(UIImage*) theCreaturesImage;

@end
