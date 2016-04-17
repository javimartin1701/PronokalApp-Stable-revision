//
//  homeViewController.m
//  Pronokal
//
//  Created by Javier Martin Espinosa on 30/10/15.
//  Copyright © 2015 Hopper. All rights reserved.
//

#import "homeViewController.h"

@interface homeViewController ()

@end

@implementation homeViewController



- (void)viewDidLoad {
    [super viewDidLoad];
    NSLocale *currentLocale = [NSLocale currentLocale];  // get the current locale.
    NSString *countryCode = [currentLocale objectForKey:NSLocaleCountryCode];
    NSLog(@"%@",countryCode);
    if ([countryCode isEqualToString:@"ES"]) {
         NSLog(@"ESPAÑA");
    }
    else if ([countryCode isEqualToString:@"AR"]){
        NSLog(@"ARGENTINA");
    }
    else if ([countryCode isEqualToString:@"UY"]){
        NSLog(@"URUGAY");
    }
    else if ([countryCode isEqualToString:@"DO"]){
        NSLog(@"REPUBLICA DOM");
    }
    else if ([countryCode isEqualToString:@"MX"]){
        NSLog(@"MEXICO");
    }
    else if ([countryCode isEqualToString:@"US"]){
        NSLog(@"USA");
    }
    // Do any additional setup after loading the view.
    logoHead.hidden = NO;
    logoHead.alpha=0.0;
    [UIView animateWithDuration:3
                          delay:0
                        options:UIViewAnimationOptionCurveEaseIn
                     animations:^{ logoHead.alpha = 1; }
                     completion:^(BOOL finished){}
     ];
    
    
}

- (void)updateViewConstraints
{
    if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPhone) {
        
        CGSize iOSDeviceScreenSize = [[UIScreen mainScreen] bounds].size;
        
        //----------------HERE WE SETUP FOR IPHONE 4/4s/iPod----------------------
        
        if(iOSDeviceScreenSize.height == 480){
            NSLog(@"iPhone 4: %f", iOSDeviceScreenSize.height);
            
            [super updateViewConstraints];
            [principal addConstraint:[NSLayoutConstraint constraintWithItem:medicos
                                                                  attribute:NSLayoutAttributeBottom
                                                                  relatedBy:NSLayoutRelationEqual
                                                                     toItem:principal
                                                                  attribute:NSLayoutAttributeBottom
                                                                 multiplier:1.0
                                                                   constant:10]];
        }
        
        else{
            NSLog(@"iPhone 5: %f", iOSDeviceScreenSize.height);
            
            [super updateViewConstraints];
            [principal addConstraint:[NSLayoutConstraint constraintWithItem:medicos
                                                                  attribute:NSLayoutAttributeBottom
                                                                  relatedBy:NSLayoutRelationEqual
                                                                     toItem:principal
                                                                  attribute:NSLayoutAttributeBottom
                                                                 multiplier:1.0
                                                                   constant:-49]];

            
        }
        
    }

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
