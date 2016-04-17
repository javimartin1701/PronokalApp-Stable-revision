//
//  Control1ViewController.h
//  Pronokal
//
//  Created by Javier Martin Espinosa on 15/10/15.
//  Copyright © 2015 Hopper. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MediaPlayer/MediaPlayer.h>

@interface Control1ViewController : UIViewController{
    IBOutlet UIScrollView *scrollcontrol;
    IBOutlet UIGestureRecognizer *recognizer;
}

-(IBAction)play:(id)sender;

@end
