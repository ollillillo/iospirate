//
//  PTCharacter.h
//  Pirates Two
//
//  Created by Eddie Lepper on 6/10/14.
//  Copyright (c) 2014 Eddie Lepper. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PTArmor.h"
#import "PTWeapon.h"

@interface PTCharacter : NSObject
@property (strong, nonatomic) PTArmor *armor;
@property (strong, nonatomic) PTWeapon *weapon;
@property (nonatomic) int damage;
@property (nonatomic) int health;
@end
