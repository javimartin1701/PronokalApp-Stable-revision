//
//  Coaching1ViewController.m
//  Pronokal
//
//  Created by Javier Martin Espinosa on 20/10/15.
//  Copyright © 2015 Hopper. All rights reserved.
//

#import "Coaching1ViewController.h"

@interface Coaching1ViewController (){
     MPMoviePlayerController *mpc;
}

@end

@implementation Coaching1ViewController

-(IBAction)play:(id)sender{
    NSLocale *currentLocale = [NSLocale currentLocale];  // get the current locale.
    NSString *countryCode = [currentLocale objectForKey:NSLocaleCountryCode];
    NSLog(@"%@",countryCode);
    
    if ([countryCode isEqualToString:@"NL"]){
        NSURL *movieURL = [NSURL URLWithString:@"http://www.pronokalgroupapp.com/pnkv/apoyo_nl.mp4"];
        MPMoviePlayerViewController *movieController = [[MPMoviePlayerViewController alloc] initWithContentURL:movieURL];
        CGAffineTransform landscapeTransform;
        landscapeTransform = CGAffineTransformMakeRotation(90*M_PI/180.0f);
        landscapeTransform = CGAffineTransformTranslate(landscapeTransform, 80, 80);
        [movieController.moviePlayer.view setTransform: landscapeTransform];
        
        [self presentMoviePlayerViewControllerAnimated:movieController];
        [movieController.moviePlayer prepareToPlay];
        [movieController.moviePlayer play];
    }
    else if ([countryCode isEqualToString:@"FR"]||[countryCode isEqualToString:@"BE"]||[countryCode isEqualToString:@"CH"]){
        NSURL *movieURL = [NSURL URLWithString:@"http://www.pronokalgroupapp.com/pnkv/apoyo_fr.mp4"];  // sample url
        MPMoviePlayerViewController *movieController = [[MPMoviePlayerViewController alloc] initWithContentURL:movieURL];
        CGAffineTransform landscapeTransform;
        landscapeTransform = CGAffineTransformMakeRotation(90*M_PI/180.0f);
        landscapeTransform = CGAffineTransformTranslate(landscapeTransform, 80, 80);
        [movieController.moviePlayer.view setTransform: landscapeTransform];
        
        [self presentMoviePlayerViewControllerAnimated:movieController];
        [movieController.moviePlayer prepareToPlay];
        [movieController.moviePlayer play];
    }
    else if ([countryCode isEqualToString:@"BR"]){
        NSURL *movieURL = [NSURL URLWithString:@"http://www.pronokalgroupapp.com/pnkv/apoyo_br.mp4"];  // sample url
        MPMoviePlayerViewController *movieController = [[MPMoviePlayerViewController alloc] initWithContentURL:movieURL];
        CGAffineTransform landscapeTransform;
        landscapeTransform = CGAffineTransformMakeRotation(90*M_PI/180.0f);
        landscapeTransform = CGAffineTransformTranslate(landscapeTransform, 80, 80);
        [movieController.moviePlayer.view setTransform: landscapeTransform];
        
        [self presentMoviePlayerViewControllerAnimated:movieController];
        [movieController.moviePlayer prepareToPlay];
        [movieController.moviePlayer play];
    }
    else if ([countryCode isEqualToString:@"GB"]){
        NSURL *movieURL = [NSURL URLWithString:@"http://www.pronokalgroupapp.com/pnkv/apoyo_en.mp4"];  // sample url
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
        NSURL *movieURL = [NSURL URLWithString:@"http://www.pronokalgroupapp.com/pnkv/apoyo.mp4"];  // sample url
        MPMoviePlayerViewController *movieController = [[MPMoviePlayerViewController alloc] initWithContentURL:movieURL];
        CGAffineTransform landscapeTransform;
        landscapeTransform = CGAffineTransformMakeRotation(90*M_PI/180.0f);
        landscapeTransform = CGAffineTransformTranslate(landscapeTransform, 80, 80);
        [movieController.moviePlayer.view setTransform: landscapeTransform];
        
        [self presentMoviePlayerViewControllerAnimated:movieController];
        [movieController.moviePlayer prepareToPlay];
        [movieController.moviePlayer play];
    }

    
    
    // NSString *stringPath=[[NSBundle mainBundle]pathForResource:@"virginiaytoni" ofType:@"mp4"];
    
   }


- (void)viewDidLoad {
    [super viewDidLoad];
    [scroller setScrollEnabled:YES];
    [scroller setContentSize:CGSizeMake(320,750)];
    // Do any additional setup after loading the view.
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
