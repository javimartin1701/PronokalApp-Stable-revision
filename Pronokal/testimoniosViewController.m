//
//  testimoniosViewController.m
//  Pronokal
//
//  Created by Javier Martin Espinosa on 18/10/15.
//  Copyright © 2015 Hopper. All rights reserved.
//

#import "testimoniosViewController.h"

@interface testimoniosViewController ()
{
    
    MPMoviePlayerController *mpc;
    MPMoviePlayerController *mpc2;
    MPMoviePlayerController *mpc3;
    MPMoviePlayerController *mpc4;
}

@end

@implementation testimoniosViewController



-(IBAction)play:(id)sender{
    NSLocale *currentLocale = [NSLocale currentLocale];  // get the current locale.
    NSString *countryCode = [currentLocale objectForKey:NSLocaleCountryCode];
    NSLog(@"%@",countryCode);
    
    if ([countryCode isEqualToString:@"BR"]){
        NSURL *movieURL = [NSURL URLWithString:@"http://www.pronokalgroupapp.com/pnkv/testimonio1_br.mp4"];
        MPMoviePlayerViewController *movieController = [[MPMoviePlayerViewController alloc] initWithContentURL:movieURL];
        CGAffineTransform landscapeTransform;
        landscapeTransform = CGAffineTransformMakeRotation(90*M_PI/180.0f);
        landscapeTransform = CGAffineTransformTranslate(landscapeTransform, 80, 80);
        [movieController.moviePlayer.view setTransform: landscapeTransform];
        
        [self presentMoviePlayerViewControllerAnimated:movieController];
        [movieController.moviePlayer prepareToPlay];
        [movieController.moviePlayer play];
    }
    else{
        NSURL *movieURL = [NSURL URLWithString:@"http://www.pronokalgroupapp.com/pnkv/testimonio1.mp4"];  // sample url
        MPMoviePlayerViewController *movieController = [[MPMoviePlayerViewController alloc] initWithContentURL:movieURL];
        CGAffineTransform landscapeTransform;
        landscapeTransform = CGAffineTransformMakeRotation(90*M_PI/180.0f);
        landscapeTransform = CGAffineTransformTranslate(landscapeTransform, 80, 80);
        [movieController.moviePlayer.view setTransform: landscapeTransform];
        
        [self presentMoviePlayerViewControllerAnimated:movieController];
        [movieController.moviePlayer prepareToPlay];
        [movieController.moviePlayer play];
    }

    
    
//    NSURL *movieURL = [NSURL URLWithString:@"http://www.pronokalgroupapp.com/pnkv/testimonio1.mp4"];  // sample url
//    MPMoviePlayerViewController *movieController = [[MPMoviePlayerViewController alloc] initWithContentURL:movieURL];
//    
//    // Logic for play movie in landscape
//    CGAffineTransform landscapeTransform;
//    landscapeTransform = CGAffineTransformMakeRotation(90*M_PI/180.0f);
//    landscapeTransform = CGAffineTransformTranslate(landscapeTransform, 80, 80);
//    [movieController.moviePlayer.view setTransform: landscapeTransform];
//    
//    [self presentMoviePlayerViewControllerAnimated:movieController];
//    [movieController.moviePlayer prepareToPlay];
//    [movieController.moviePlayer play];
    
    
    
    
    
//////////////////////////////
    
   // NSString *stringPath=[[NSBundle mainBundle]pathForResource:@"virginiaytoni" ofType:@"mp4"];
  
    /*
    NSURL *url = [NSURL URLWithString:@"http://www.pronokalgroupapp.com/pnkv/testimonio1.mp4"];
   
    mpc=[[MPMoviePlayerController alloc] initWithContentURL:url];
    [mpc setMovieSourceType:MPMovieSourceTypeFile];
    
    
    [[self view]addSubview:mpc.view];
   

    [mpc setFullscreen:YES];
   
    
    [mpc play];*/
}

-(IBAction)play2:(id)sender{
    
    NSLocale *currentLocale = [NSLocale currentLocale];  // get the current locale.
    NSString *countryCode = [currentLocale objectForKey:NSLocaleCountryCode];
    NSLog(@"%@",countryCode);
    
    if ([countryCode isEqualToString:@"BR"]){
        NSURL *movieURL = [NSURL URLWithString:@"http://www.pronokalgroupapp.com/pnkv/testimonio2_br.mp4"];
        MPMoviePlayerViewController *movieController = [[MPMoviePlayerViewController alloc] initWithContentURL:movieURL];
        CGAffineTransform landscapeTransform;
        landscapeTransform = CGAffineTransformMakeRotation(90*M_PI/180.0f);
        landscapeTransform = CGAffineTransformTranslate(landscapeTransform, 80, 80);
        [movieController.moviePlayer.view setTransform: landscapeTransform];
        
        [self presentMoviePlayerViewControllerAnimated:movieController];
        [movieController.moviePlayer prepareToPlay];
        [movieController.moviePlayer play];
    }
    else{
        NSURL *movieURL = [NSURL URLWithString:@"http://www.pronokalgroupapp.com/pnkv/testimonio2.mp4"];  // sample url
        MPMoviePlayerViewController *movieController = [[MPMoviePlayerViewController alloc] initWithContentURL:movieURL];
        CGAffineTransform landscapeTransform;
        landscapeTransform = CGAffineTransformMakeRotation(90*M_PI/180.0f);
        landscapeTransform = CGAffineTransformTranslate(landscapeTransform, 80, 80);
        [movieController.moviePlayer.view setTransform: landscapeTransform];
        
        [self presentMoviePlayerViewControllerAnimated:movieController];
        [movieController.moviePlayer prepareToPlay];
        [movieController.moviePlayer play];
    }

    
    
//    NSURL *movieURL = [NSURL URLWithString:@"http://www.pronokalgroupapp.com/pnkv/testimonio2.mp4"];  // sample url
//    MPMoviePlayerViewController *movieController = [[MPMoviePlayerViewController alloc] initWithContentURL:movieURL];
//    
//    // Logic for play movie in landscape
//    CGAffineTransform landscapeTransform;
//    landscapeTransform = CGAffineTransformMakeRotation(90*M_PI/180.0f);
//    landscapeTransform = CGAffineTransformTranslate(landscapeTransform, 80, 80);
//    [movieController.moviePlayer.view setTransform: landscapeTransform];
//    
//    [self presentMoviePlayerViewControllerAnimated:movieController];
//    [movieController.moviePlayer prepareToPlay];
//    [movieController.moviePlayer play];
    
    
    /*
    //NSString *stringPath2=[[NSBundle mainBundle]pathForResource:@"ingridconsuelo" ofType:@"mp4"];
    NSURL *url2 = [NSURL URLWithString:@"http://www.pronokalgroupapp.com/pnkv/testimonio2.mp4"];
    
    mpc2=[[MPMoviePlayerController alloc] initWithContentURL:url2];
    [mpc2 setMovieSourceType:MPMovieSourceTypeFile];
    
    [[self view]addSubview:mpc2.view];
    [mpc2 setFullscreen:YES];
    
    [mpc2 play];*/
    
}

-(IBAction)irweb:(id)sender{
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://www.comprometidoscomumpesosaudavel.pt"]];
}

-(IBAction)play3:(id)sender{
    
    NSLocale *currentLocale = [NSLocale currentLocale];  // get the current locale.
    NSString *countryCode = [currentLocale objectForKey:NSLocaleCountryCode];
    NSLog(@"%@",countryCode);
    
    if ([countryCode isEqualToString:@"BR"]){
        NSURL *movieURL = [NSURL URLWithString:@"http://www.pronokalgroupapp.com/pnkv/testimonio3_br.mp4"];
        MPMoviePlayerViewController *movieController = [[MPMoviePlayerViewController alloc] initWithContentURL:movieURL];
        CGAffineTransform landscapeTransform;
        landscapeTransform = CGAffineTransformMakeRotation(90*M_PI/180.0f);
        landscapeTransform = CGAffineTransformTranslate(landscapeTransform, 80, 80);
        [movieController.moviePlayer.view setTransform: landscapeTransform];
        
        [self presentMoviePlayerViewControllerAnimated:movieController];
        [movieController.moviePlayer prepareToPlay];
        [movieController.moviePlayer play];
    }
    else{
        NSURL *movieURL = [NSURL URLWithString:@"http://www.pronokalgroupapp.com/pnkv/testimonio3.mp4"];  // sample url
        MPMoviePlayerViewController *movieController = [[MPMoviePlayerViewController alloc] initWithContentURL:movieURL];
        CGAffineTransform landscapeTransform;
        landscapeTransform = CGAffineTransformMakeRotation(90*M_PI/180.0f);
        landscapeTransform = CGAffineTransformTranslate(landscapeTransform, 80, 80);
        [movieController.moviePlayer.view setTransform: landscapeTransform];
        
        [self presentMoviePlayerViewControllerAnimated:movieController];
        [movieController.moviePlayer prepareToPlay];
        [movieController.moviePlayer play];
    }

    
//    NSURL *movieURL = [NSURL URLWithString:@"http://www.pronokalgroupapp.com/pnkv/testimonio3.mp4"];  // sample url
//    MPMoviePlayerViewController *movieController = [[MPMoviePlayerViewController alloc] initWithContentURL:movieURL];
//    
//    // Logic for play movie in landscape
//    CGAffineTransform landscapeTransform;
//    landscapeTransform = CGAffineTransformMakeRotation(90*M_PI/180.0f);
//    landscapeTransform = CGAffineTransformTranslate(landscapeTransform, 80, 80);
//    [movieController.moviePlayer.view setTransform: landscapeTransform];
//    
//    [self presentMoviePlayerViewControllerAnimated:movieController];
//    [movieController.moviePlayer prepareToPlay];
//    [movieController.moviePlayer play];
    
    
    /*
   // NSString *stringPath3=[[NSBundle mainBundle]pathForResource:@"anamarta" ofType:@"mp4"];
    NSURL *url3 = [NSURL URLWithString:@"http://www.pronokalgroupapp.com/pnkv/testimonio3.mp4"];
    
    mpc3=[[MPMoviePlayerController alloc] initWithContentURL:url3];
    [mpc3 setMovieSourceType:MPMovieSourceTypeFile];
    
    [[self view]addSubview:mpc3.view];
    [mpc3 setFullscreen:YES];
    [mpc3 play];
     
     */
}

-(IBAction)play4:(id)sender{
    NSLocale *currentLocale = [NSLocale currentLocale];  // get the current locale.
    NSString *countryCode = [currentLocale objectForKey:NSLocaleCountryCode];
    NSLog(@"%@",countryCode);
    
    if ([countryCode isEqualToString:@"BR"]){
        NSURL *movieURL = [NSURL URLWithString:@"http://www.pronokalgroupapp.com/pnkv/testimonio4_br.mp4"];
        MPMoviePlayerViewController *movieController = [[MPMoviePlayerViewController alloc] initWithContentURL:movieURL];
        CGAffineTransform landscapeTransform;
        landscapeTransform = CGAffineTransformMakeRotation(90*M_PI/180.0f);
        landscapeTransform = CGAffineTransformTranslate(landscapeTransform, 80, 80);
        [movieController.moviePlayer.view setTransform: landscapeTransform];
        
        [self presentMoviePlayerViewControllerAnimated:movieController];
        [movieController.moviePlayer prepareToPlay];
        [movieController.moviePlayer play];
    }
    else{
        NSURL *movieURL = [NSURL URLWithString:@"http://www.pronokalgroupapp.com/pnkv/testimonio4.mp4"];  // sample url
        MPMoviePlayerViewController *movieController = [[MPMoviePlayerViewController alloc] initWithContentURL:movieURL];
        CGAffineTransform landscapeTransform;
        landscapeTransform = CGAffineTransformMakeRotation(90*M_PI/180.0f);
        landscapeTransform = CGAffineTransformTranslate(landscapeTransform, 80, 80);
        [movieController.moviePlayer.view setTransform: landscapeTransform];
        
        [self presentMoviePlayerViewControllerAnimated:movieController];
        [movieController.moviePlayer prepareToPlay];
        [movieController.moviePlayer play];
    }

    
//    NSURL *movieURL = [NSURL URLWithString:@"http://www.pronokalgroupapp.com/pnkv/testimonio4.mp4"];  // sample url
//    MPMoviePlayerViewController *movieController = [[MPMoviePlayerViewController alloc] initWithContentURL:movieURL];
//    
//    // Logic for play movie in landscape
//    CGAffineTransform landscapeTransform;
//    landscapeTransform = CGAffineTransformMakeRotation(90*M_PI/180.0f);
//    landscapeTransform = CGAffineTransformTranslate(landscapeTransform, 80, 80);
//    [movieController.moviePlayer.view setTransform: landscapeTransform];
//    
//    [self presentMoviePlayerViewControllerAnimated:movieController];
//    [movieController.moviePlayer prepareToPlay];
//    [movieController.moviePlayer play];
    
    /*
    //NSString *stringPath4=[[NSBundle mainBundle]pathForResource:@"virginiaytoni" ofType:@"mp4"];
    NSURL *url4 = [NSURL URLWithString:@"http://www.pronokalgroupapp.com/pnkv/testimonio4.mp4"];
    
    mpc4=[[MPMoviePlayerController alloc] initWithContentURL:url4];

    [mpc4 setMovieSourceType:MPMovieSourceTypeFile];
    
    [[self view]addSubview:mpc4.view];
    [mpc4 setFullscreen:YES];
    [mpc4 play];
     */
}






- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [scrolltestimonios setScrollEnabled:YES];
    [scrolltestimonios setContentSize:CGSizeMake(320,700)];
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
