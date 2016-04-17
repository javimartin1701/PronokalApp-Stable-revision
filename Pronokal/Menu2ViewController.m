//
//  Menu2ViewController.m
//  Pronokal
//
//  Created by Javier Martin Espinosa on 29/10/15.
//  Copyright © 2015 Hopper. All rights reserved.
//

#import "Menu2ViewController.h"

@interface Menu2ViewController ()

@end

@implementation Menu2ViewController

- (void)tabBar:(UITabBar *)tabBar didSelectItem:(UITabBarItem *)item
{
    if(item.tag == 66)
    {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Test Message"
                                                        message:@"This is a test"
                                                       delegate:nil
                                              cancelButtonTitle:@"OK"
                                              otherButtonTitles:nil];
        [alert show];
        
    }
}

- (void)viewDidLoad {
    [super viewDidLoad];
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
