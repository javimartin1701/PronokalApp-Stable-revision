//
//  ClubViewController.m
//  Pronokal
//
//  Created by Javier Martin Espinosa on 13/10/15.
//  Copyright © 2015 Hopper. All rights reserved.
//

#import "ClubViewController.h"

@interface ClubViewController ()

@end

@implementation ClubViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSString *website = @"http://www.pronokalgroupclub.com";
    NSURL *url = [NSURL URLWithString:website];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    
    [clubpage loadRequest:request];
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
