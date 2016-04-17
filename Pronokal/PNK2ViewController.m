//
//  PNK2ViewController.m
//  Pronokal
//
//  Created by Javier Martin Espinosa on 15/10/15.
//  Copyright © 2015 Hopper. All rights reserved.
//

#import "PNK2ViewController.h"

@interface PNK2ViewController (){
    MPMoviePlayerController *mpc;
}


@end

@implementation PNK2ViewController

-(IBAction)play:(id)sender{
    
    
    // NSString *stringPath=[[NSBundle mainBundle]pathForResource:@"virginiaytoni" ofType:@"mp4"];
    
    NSURL *url = [NSURL URLWithString:@"http://webdemo.com.es/pnkv/pnkgroup.mp4"];
    
    mpc=[[MPMoviePlayerController alloc] initWithContentURL:url];
    [mpc setMovieSourceType:MPMovieSourceTypeFile];
    
    [[self view]addSubview:mpc.view];
    [mpc setFullscreen:YES];
    [mpc play];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [scrollpnk setScrollEnabled:YES];
    [scrollpnk setContentSize:CGSizeMake(320,2100)];
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
