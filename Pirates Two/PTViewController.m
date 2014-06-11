//
//  PTViewController.m
//  Pirates Two
//
//  Created by Eddie Lepper on 6/10/14.
//  Copyright (c) 2014 Eddie Lepper. All rights reserved.
//

#import "PTViewController.h"
#import "PTFactory.h"
#import "PTTile.h"

@interface PTViewController ()

@end

@implementation PTViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    PTFactory *factory = [[PTFactory alloc] init];
    self.character = [factory character];
    self.boss = [factory boss];
    self.tiles = [factory tiles];
    self.currentPosition = CGPointMake(0, 0);
    [self updateCharacterStatsForArmor:nil withWeapons:nil withHealthEffect:0];
    [self updateTiles];
    [self updateButtons];
    
}

-(void)updateTiles
{
    PTTile *tileModel = [[self.tiles objectAtIndex:self.currentPosition.x] objectAtIndex:self.currentPosition.y];
    
    self.healthLabel.text = [NSString stringWithFormat:@"%i", self.character.health] ;
    self.damageLabel.text = [NSString stringWithFormat:@"%i", self.character.damage] ;
    self.weaponLabel.text = self.character.weapon.name;
    self.armorLabel.text = self.character.armor.name;
    
    self.storyLabel.text = tileModel.story;
    self.backgroundImage.image = tileModel.image;
    [self.actionButton setTitle:tileModel.actionButtonName forState:UIControlStateNormal];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)northButtonPressed:(UIButton *)sender
{
    self.currentPosition = CGPointMake(self.currentPosition.x, self.currentPosition.y + 1);
    [self updateButtons];
    [self updateTiles];
}

- (IBAction)southButtonPressed:(UIButton *)sender
{
    self.currentPosition = CGPointMake(self.currentPosition.x, self.currentPosition.y - 1);
    [self updateButtons];
    [self updateTiles];
}

- (IBAction)westButtonPressed:(UIButton *)sender
{
    self.currentPosition = CGPointMake(self.currentPosition.x - 1, self.currentPosition.y);
    [self updateButtons];
    [self updateTiles];
}

- (IBAction)actionButtonPressed:(UIButton *)sender {
    PTTile *tileModel = [[self.tiles objectAtIndex:self.currentPosition.x] objectAtIndex:self.currentPosition.y];
    
    
    if (tileModel.healthEffect == -15) {
        
        self.boss.health = self.boss.health - self.character.damage;
        
    }
    
    [self updateCharacterStatsForArmor:tileModel.armor withWeapons:tileModel.weapon withHealthEffect:tileModel.healthEffect];
    [self updateTiles];
    
    if (self.character.health <= 0) {
        
        UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Death" message:@"You have died restart the game!" delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles: nil];
        
        [alertView show];
        
    }
    
    else if (self.boss.health <= 0) {
        
        UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Victory"message:@"You killed the evil pirate boss!" delegate:Nil cancelButtonTitle:@"Ok" otherButtonTitles: nil];
        
        [alertView show];
        
    }
    
    
    
}

- (IBAction)resetButtonPressed:(UIButton *)sender
{
    self.character = nil;
    self.boss = nil;
    [self viewDidLoad];
    
}

- (IBAction)eastButtonPressed:(UIButton *)sender
{
    self.currentPosition = CGPointMake(self.currentPosition.x + 1, self.currentPosition.y);
    [self updateButtons];
    [self updateTiles];
}



-(void)updateButtons {
    self.westButton.hidden = [self tileExistsAtPoint:CGPointMake(self.currentPosition.x - 1, self.currentPosition.y)];
    self.eastButton.hidden = [self tileExistsAtPoint:CGPointMake(self.currentPosition.x + 1, self.currentPosition.y)];
    self.northButton.hidden = [self tileExistsAtPoint:CGPointMake(self.currentPosition.x, self.currentPosition.y  + 1)];
    self.southButton.hidden = [self tileExistsAtPoint:CGPointMake(self.currentPosition.x, self.currentPosition.y  - 1)];
}


-(void)updateCharacterStatsForArmor:(PTArmor *)armor withWeapons:(PTWeapon *)weapon withHealthEffect:(int)healthEffect
{
    if (armor != nil){
        self.character.health = self.character.health - self.character.armor.health + armor.health;
        self.character.armor = armor;
    }
    else if (weapon != nil){
        self.character.damage = self.character.damage - self.character.weapon.damage + weapon.damage;
        self.character.weapon = weapon;
    }
    else if (healthEffect != 0){
        self.character.health = self.character.health + healthEffect;
    }
    else {
        self.character.health = self.character.health + self.character.armor.health;
        self.character.damage = self.character.damage + self.character.weapon.damage;
    }
}

-(BOOL)tileExistsAtPoint:(CGPoint)point
{
    if (point.y >= 0 && point.x >= 0 && point.x < self.tiles.count && point.y < [[self.tiles objectAtIndex:point.x] count])
    {
        return NO;
    }
    else
        return YES;
}
@end
