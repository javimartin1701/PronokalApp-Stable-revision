//
//  Nutricion2ViewController.m
//  Pronokal
//
//  Created by Javier Martin Espinosa on 14/10/15.
//  Copyright © 2015 Hopper. All rights reserved.
//

#import "Nutricion2ViewController.h"

@interface Nutricion2ViewController ()

@end

@implementation Nutricion2ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [scrollnutricion setScrollEnabled:YES];
    [scrollnutricion setContentSize:CGSizeMake(320,800)];

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
