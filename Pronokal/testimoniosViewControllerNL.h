//
//  testimoniosViewController.h
//  Pronokal
//
//  Created by Javier Martin Espinosa on 18/10/15.
//  Copyright © 2015 Hopper. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MediaPlayer/MediaPlayer.h>

@interface testimoniosViewControllerNL : UIViewController{
    IBOutlet UIScrollView *scrolltestimonios;
    
    IBOutlet UIButton *botonUK1;
    IBOutlet UIButton *botonUK2;
    IBOutlet UIButton *botonUK3;
    
}

-(IBAction)play:(id)sender;
-(IBAction)play2:(id)sender;
-(IBAction)play3:(id)sender;
-(IBAction)play4:(id)sender;

-(IBAction)playUK1:(id)sender;
-(IBAction)playUK2:(id)sender;
-(IBAction)playUK3:(id)sender;
@end
