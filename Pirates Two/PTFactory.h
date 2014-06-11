//
//  PTFactory.h
//  Pirates Two
//
//  Created by Eddie Lepper on 6/10/14.
//  Copyright (c) 2014 Eddie Lepper. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PTCharacter.h"
#import "PTBoss.h"

@interface PTFactory : NSObject
-(NSArray *)tiles;
-(PTCharacter *)character;
-(PTBoss *)boss;

@end
