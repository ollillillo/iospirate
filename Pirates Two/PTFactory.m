//
//  PTFactory.m
//  Pirates Two
//
//  Created by Eddie Lepper on 6/10/14.
//  Copyright (c) 2014 Eddie Lepper. All rights reserved.
//

#import "PTFactory.h"
#import "PTTile.h"

@implementation PTFactory
- (NSArray *)tiles
{
    PTTile *tile1 = [[PTTile alloc] init];
    tile1.story = @"story1";
    tile1.story = @"1 Captain, we need a fearless leader such as you to undertake a voyage. You must stop the evil pirate Boss before he steals any more plunder. Would you like a blunted sword to get started?";
    tile1.image = [UIImage imageNamed:@"PirateStart.jpg"];
    tile1.actionButtonName = @"Take the sword";
    PTWeapon *bluntedSword = [[PTWeapon alloc] init];
    bluntedSword.name = @"Blunted Sword";
    bluntedSword.damage = 7;
    tile1.weapon = bluntedSword;
    
    
    PTTile *tile2 = [[PTTile alloc] init];
    tile2.story = @"2 You have come across an armory. Would you like to upgrade your armor to steel armor?";
    tile2.image = [UIImage imageNamed:@"PirateBlacksmith.jpeg"];
    tile2.actionButtonName = @"Take steel armor";
    PTArmor *steelArmor = [[PTArmor alloc] init];
    steelArmor.name = @"Steel Armor";
    steelArmor.health = 7;
    tile2.armor = steelArmor;
    
    
    
    PTTile *tile3 = [[PTTile alloc] init];
    tile3.story = @"3 A mysterious dock appears on the horizon. Should we stop and ask for directions?";
    tile3.image = [UIImage imageNamed:@"PirateFriendlyDock.jpg"];
    tile3.actionButtonName = @"Stop at the Dock";
    tile3.healthEffect = 17;
    
    
    NSArray *firstColumn = [[NSArray alloc] initWithObjects:tile1, tile2, tile3, nil];
    
    
    
    PTTile *tile4 = [[PTTile alloc] init];
    tile4.story = @"4 You have found a parrot can be used in your armor slot! Parrots are a great defender and are fiercly loyal to their captain.";
    tile4.image = [UIImage imageNamed:@"PirateParrot.jpg"];
    tile4.actionButtonName = @"Adopt Parrot";
    PTArmor *parrotArmor = [[PTArmor alloc] init];
    parrotArmor.health = 20;
    parrotArmor.name = @"Parrot Armor";
    tile4.armor = parrotArmor;
    
    
    PTTile *tile5 = [[PTTile alloc] init];
    tile5.story = @"5 You have stumbled upon a cache of pirate weapons. Would you like to upgrade to a pistol?";
    tile5.image = [UIImage imageNamed:@"PirateWeapons.jpeg"];
    tile5.actionButtonName = @"Take pistol";
    PTWeapon *pistolWeapon = [[PTWeapon alloc] init];
    pistolWeapon.name = @"Pistol";
    pistolWeapon.damage = 12;
    tile5.weapon = pistolWeapon;
    
    
    
    PTTile *tile6 = [[PTTile alloc] init];
    tile6.story = @"6 You have been captured by pirates and are ordered to walk the plank";
    tile6.image = [UIImage imageNamed:@"PiratePlank.jpg"];
    tile6.actionButtonName = @"Show no fear!";
    tile6.healthEffect = -22;
    
    
    NSArray *secondColumn = [[NSArray alloc] initWithObjects:tile4, tile5, tile6, nil];
    
    
    PTTile *tile7 = [[PTTile alloc] init];
    tile7.story = @"7 You sight a pirate battle off the coast";
    tile7.image = [UIImage imageNamed:@"PirateShipBattle.jpeg"];
    tile7.actionButtonName = @"Fight those scum!";
    tile7.healthEffect = -15;
    
    
    
    PTTile *tile8 = [[PTTile alloc] init];
    tile8.story = @"8 The legend of the deep, the mighty kraken appears";
    tile8.image = [UIImage imageNamed:@"PirateOctopusAttack.jpg"];
    tile8.actionButtonName = @"Abandon Ship";
    tile8.healthEffect = -46;
    
    PTTile *tile9 = [[PTTile alloc] init];
    tile9.story = @"9 You stumble upon a hidden cave of pirate treasurer";
    tile9.image = [UIImage imageNamed:@"PirateTreasure.jpeg"];
    tile9.actionButtonName = @"Take Treasurer";
    tile9.healthEffect = 20;
    
    NSArray *thirdColumn = [[NSArray alloc] initWithObjects:tile7, tile8, tile9, nil];
    
    
    PTTile *tile10 = [[PTTile alloc] init];
    tile10.story = @"10 A group of pirates attempts to board your ship";
    tile10.image = [UIImage imageNamed:@"PirateAttack.jpg"];
    tile10.actionButtonName = @"Repel the invaders";
    tile10.healthEffect = 15;
    
    
    
    PTTile *tile11 = [[PTTile alloc] init];
    tile11.story = @"11 In the deep of the sea many things live and many things can be found. Will the fortune bring help or ruin?";
    tile11.image = [UIImage imageNamed:@"PirateTreasurer2.jpeg"];
    tile11.actionButtonName = @"Swim deeper";
    tile11.healthEffect = -7;
    
    
    
    
    
    PTTile *tile12 = [[PTTile alloc] init];
    tile12.story = @"12 Your final faceoff with the fearsome pirate boss";
    tile12.image = [UIImage imageNamed:@"PirateBoss.jpeg"];
    tile12.actionButtonName = @"Fight!";
    tile12.healthEffect = -15;
    
    
    
    NSArray *fourthColumn = [[NSArray alloc] initWithObjects:tile10, tile11, tile12, nil];
    
    
    return [[NSArray alloc] initWithObjects:firstColumn, secondColumn, thirdColumn, fourthColumn, nil];
    
    
}


- (PTCharacter *)character
{

    PTCharacter * character = [[PTCharacter alloc] init];
    character.health = 100;
    PTArmor *armor = [[PTArmor alloc] init];
    armor.name = @"Cloak";
    armor.health = 5;
    character.armor = armor;

    PTWeapon *weapon = [[PTWeapon alloc] init];
    weapon.name = @"Fist";
    weapon.damage = 10;
    character.weapon = weapon;
    return character;
}

-(PTBoss *)boss
{
    PTBoss *boss = [[PTBoss alloc] init];
    boss.health = 65;
    return boss;
    
}

@end











