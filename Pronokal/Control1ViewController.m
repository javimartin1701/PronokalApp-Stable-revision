//
//  Control1ViewController.m
//  Pronokal
//
//  Created by Javier Martin Espinosa on 15/10/15.
//  Copyright © 2015 Hopper. All rights reserved.
//

#import "Control1ViewController.h"

@interface Control1ViewController (){
    MPMoviePlayerController *mpc;
}


@end

@implementation Control1ViewController

-(IBAction)play:(id)sender{
    
    NSURL *movieURL = [NSURL URLWithString:@"http://www.pronokalgroupapp.com/pnkv/controlmedico.mp4"];  // sample url
    MPMoviePlayerViewController *movieController = [[MPMoviePlayerViewController alloc] initWithContentURL:movieURL];
    
    // Logic for play movie in landscape
    CGAffineTransform landscapeTransform;
    landscapeTransform = CGAffineTransformMakeRotation(90*M_PI/180.0f);
    landscapeTransform = CGAffineTransformTranslate(landscapeTransform, 80, 80);
    [movieController.moviePlayer.view setTransform: landscapeTransform];
    
    [self presentMoviePlayerViewControllerAnimated:movieController];
    [movieController.moviePlayer prepareToPlay];
    [movieController.moviePlayer play];
    
    /*
    // NSString *stringPath=[[NSBundle mainBundle]pathForResource:@"virginiaytoni" ofType:@"mp4"];
    
    NSURL *url = [NSURL URLWithString:@"http://www.pronokalgroupapp.com/pnkv/controlmedico.mp4"];
    
    mpc=[[MPMoviePlayerController alloc] initWithContentURL:url];
    [mpc setMovieSourceType:MPMovieSourceTypeFile];
    
    [[self view]addSubview:mpc.view];
    [mpc setFullscreen:YES];
    [mpc play];
     */
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [scrollcontrol setScrollEnabled:YES];
    [scrollcontrol setContentSize:CGSizeMake(320,600)];
    
    

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
