//
//  CardGridViewController.m
//  OOP-Cards-Views
//
//  Created by Al Tyus on 2/18/14.
//  Copyright (c) 2014 Flatiron School. All rights reserved.
//

#import "CardGridViewController.h"

@interface CardGridViewController ()

@end

@implementation CardGridViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    for (UIView *cardView in self.cardsCollection)
    {
        if ([cardView isKindOfClass:[UIImageView class]])
        {
            NSLog(@"%fpts x %fpts", cardView.frame.size.width, cardView.frame.size.height);
            NSLog(@"x = %f x y = %f", cardView.frame.origin.x, cardView.frame.origin.y);
        }
    }
    
    NSUInteger xPosistion = 20;
    NSUInteger yPosistion = 20;
    for (NSUInteger i=0; i<self.cardsCollection.count; i++) {
        if (xPosistion > 300) {
            xPosistion = 20;
            yPosistion += 128;
        }
        CGRect cardPosistion = CGRectMake(xPosistion, yPosistion, 80, 108);
        UIImageView *card = self.cardsCollection[i];
        card.frame = cardPosistion;
        xPosistion += 100;
    }
    
    
    
    
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
