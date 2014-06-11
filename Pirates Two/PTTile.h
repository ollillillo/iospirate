//
//  PTTile.h
//  Pirates Two
//
//  Created by Eddie Lepper on 6/10/14.
//  Copyright (c) 2014 Eddie Lepper. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PTWeapon.h"
#import "PTArmor.h"

@interface PTTile : NSObject
@property (strong, nonatomic) NSString *story;
@property (strong, nonatomic) UIImage *image;
@property (strong, nonatomic) NSString *actionButtonName;
@property (strong, nonatomic) PTWeapon *weapon;
@property (strong, nonatomic) PTArmor *armor;
@property (nonatomic) int healthEffect;
@end
