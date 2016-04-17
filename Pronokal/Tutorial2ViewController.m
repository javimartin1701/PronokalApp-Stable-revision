//
//  Tutorial2ViewController.m
//  Pronokal
//
//  Created by Javier Martin Espinosa on 12/11/15.
//  Copyright © 2015 Hopper. All rights reserved.
//

#import "Tutorial2ViewController.h"

@interface Tutorial2ViewController ()

@end

@implementation Tutorial2ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    [scroller setScrollEnabled:YES];
    [scroller setContentSize:CGSizeMake(320,500)];
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
