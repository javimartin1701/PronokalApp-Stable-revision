//
//  ContactoViewController.h
//  Pronokal
//
//  Created by Javier Martin Espinosa on 8/10/15.
//  Copyright © 2015 Hopper. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MessageUI/MessageUI.h>

@interface ContactoViewController : UIViewController{
    IBOutlet UIScrollView *scroller;
    IBOutlet UIImageView *textoEspana;
    IBOutlet UIImageView *textoArgentina;
    IBOutlet UIImageView *textoUrugay;
    IBOutlet UIImageView *textoMexico;
    IBOutlet UIImageView *textoRepDom;
    IBOutlet UIImageView *textoPortugal;
    IBOutlet UIImageView *textoUK;
    NSArray *toRecipents2;
    IBOutlet UIView *llegarGroup;
    IBOutlet UIView *llamarGroup;
    IBOutlet UIView *mailGroup;
    IBOutlet UIView *principal;
    
}

- (IBAction)llamar:(id)sender;
- (IBAction)mail:(id)sender;
- (IBAction)llegar:(id)sender;

@end
