//
//  comproViewController.m
//  Pronokal
//
//  Created by Javier Martin Espinosa on 5/11/15.
//  Copyright © 2015 Hopper. All rights reserved.
//

#import "comproViewController.h"

@interface comproViewController ()

@end

@implementation comproViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSLocale *currentLocale = [NSLocale currentLocale];  // get the current locale.
    NSString *countryCode = [currentLocale objectForKey:NSLocaleCountryCode];
    NSString * language = [[NSLocale preferredLanguages] objectAtIndex:0];
    NSLog(@"%@",countryCode);
    if ([language isEqualToString:@"es-AR"]) {
         NSLog(@"Argentina");
        NSString *website = @"http://www.compromisopronokal.com.ar";
        NSURL *url = [NSURL URLWithString:website];
        NSURLRequest *request = [NSURLRequest requestWithURL:url];
        [compro loadRequest:request];

    }
    else if ([language isEqualToString:@"es-DO"]) {
        NSLog(@"Argentina");
        NSString *website = @"http://www.pesosaludablepronokal.do";
        NSURL *url = [NSURL URLWithString:website];
        NSURLRequest *request = [NSURLRequest requestWithURL:url];
        [compro loadRequest:request];
        
    }
    else if ([language isEqualToString:@"es-MX"]) {
        NSLog(@"Argentina");
        NSString *website = @"http://www.comprometidosporunpesosaludable.com.mx";
        NSURL *url = [NSURL URLWithString:website];
        NSURLRequest *request = [NSURLRequest requestWithURL:url];
        [compro loadRequest:request];
        
    }
    else{
        NSLog(@"España");
        NSString *website = @"http://comprometidosporunpesosaludable.com";
        NSURL *url = [NSURL URLWithString:website];
        NSURLRequest *request = [NSURLRequest requestWithURL:url];
        [compro loadRequest:request];

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
