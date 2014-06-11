//
//  PTViewController.h
//  Pirates Two
//
//  Created by Eddie Lepper on 6/10/14.
//  Copyright (c) 2014 Eddie Lepper. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PTCharacter.h"
#import "PTBoss.h"

@interface PTViewController : UIViewController


@property (strong, nonatomic) IBOutlet UILabel *healthLabel;
@property (strong, nonatomic) IBOutlet UILabel *damageLabel;
@property (strong, nonatomic) IBOutlet UILabel *weaponLabel;
@property (strong, nonatomic) IBOutlet UILabel *armorLabel;
@property (strong, nonatomic) IBOutlet UILabel *storyLabel;
@property (strong, nonatomic) IBOutlet UIButton *actionButton;
@property (strong, nonatomic) IBOutlet UIImageView *backgroundImage;
@property (strong, nonatomic) IBOutlet UIButton *northButton;
@property (strong, nonatomic) IBOutlet UIButton *eastButton;
@property (strong, nonatomic) IBOutlet UIButton *westButton;
@property (strong, nonatomic) IBOutlet UIButton *southButton;

- (IBAction)northButtonPressed:(UIButton *)sender;
- (IBAction)southButtonPressed:(UIButton *)sender;
- (IBAction)eastButtonPressed:(UIButton *)sender;
- (IBAction)westButtonPressed:(UIButton *)sender;
- (IBAction)actionButtonPressed:(UIButton *)sender;
- (IBAction)resetButtonPressed:(UIButton *)sender;


@property (nonatomic) CGPoint currentPosition;
@property (strong, nonatomic) NSArray  *tiles;
@property (strong, nonatomic) PTCharacter *character;
@property (strong, nonatomic) PTBoss *boss;
@end
