//
//  Coaching2bViewController.h
//  Pronokal
//
//  Created by Javier Martin Espinosa on 22/10/15.
//  Copyright © 2015 Hopper. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Coaching2bViewController : UIViewController{
    IBOutlet UIScrollView *scroller;
    
    IBOutlet UISlider *slider1;
    IBOutlet UISlider *slider2;
    IBOutlet UISlider *slider3;
    
    IBOutlet UISlider *slider4;
    IBOutlet UISlider *slider5;
    IBOutlet UISlider *slider6;
    
    IBOutlet UISlider *slider7;
    IBOutlet UISlider *slider8;
    IBOutlet UISlider *slider9;
    
    IBOutlet UISlider *slider10;
    IBOutlet UISlider *slider11;
    IBOutlet UISlider *slider12;
    
    IBOutlet UILabel *label1;
    IBOutlet UILabel *label12;
    IBOutlet UILabel *label13;
    IBOutlet UILabel *label14;
    IBOutlet UILabel *label2;
    IBOutlet UILabel *label23;
    IBOutlet UILabel *label24;
    IBOutlet UILabel *label3;
    IBOutlet UILabel *label34;
    IBOutlet UILabel *label4;
    
    IBOutlet UITextView *caso1;
    IBOutlet UITextView *caso2;
    IBOutlet UITextView *caso3;
    
    IBOutlet UILabel *amasd;
    IBOutlet UILabel *bmasc;
    
    IBOutlet UIView *paso1;
    IBOutlet UIView *paso2;
    IBOutlet UIView *paso3;
    IBOutlet UIView *paso4;
    IBOutlet UIView *informeFinal;
    
    
    
    
}

-(IBAction)empezar:(id)sender;
-(IBAction)siguiente1:(id)sender;
-(IBAction)siguiente2:(id)sender;
-(IBAction)siguiente3:(id)sender;
-(IBAction)finalizar:(id)sender;

@end
