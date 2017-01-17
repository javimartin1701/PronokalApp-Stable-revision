//
//  ContactoViewController.h
//  Pronokal
//
//  Created by Javier Martin Espinosa on 8/10/15.
//  Copyright © 2015 Hopper. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MessageUI/MessageUI.h>
#import <MapKit/MapKit.h>

@interface ContactoViewController : UIViewController < MKMapViewDelegate >{
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
    BOOL _doneInitialZoom;
    IBOutlet MKMapView *Localizacion;
    IBOutlet UIButton *cerrarMapa;
    
}

@property (nonatomic, retain) IBOutlet MKMapView *Localizacion;

- (IBAction)llamar:(id)sender;
- (IBAction)mail:(id)sender;
- (IBAction)llegar:(id)sender;
-(IBAction)closeMapa:(id)sender;

@end
