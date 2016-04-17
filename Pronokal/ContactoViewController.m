//
//  ContactoViewController.m
//  Pronokal
//
//  Created by Javier Martin Espinosa on 8/10/15.
//  Copyright © 2015 Hopper. All rights reserved.
//

#import "ContactoViewController.h"

@interface ContactoViewController ()

@end

@implementation ContactoViewController

- (IBAction)llamar:(id)sender
{
    NSLocale *currentLocale = [NSLocale currentLocale];  // get the current locale.
    NSString *countryCode = [currentLocale objectForKey:NSLocaleCountryCode];
    NSLog(@"%@",countryCode);
    
    if ([countryCode isEqualToString:@"ES"]) {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"tel:901100262"]];
        NSLog(@"ESPAÑA");
    }
    else if ([countryCode isEqualToString:@"AR"]){
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"tel:08008883377"]];
        NSLog(@"ARGENTINA");
    }
    else if ([countryCode isEqualToString:@"UY"]){
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"tel:26227658"]];
        NSLog(@"URUGAY");
    }
    else if ([countryCode isEqualToString:@"DO"]){
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"tel:8095084105"]];
        NSLog(@"REPUBLICA DOM");
    }
    else if ([countryCode isEqualToString:@"MX"]){
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"tel:018000878861"]];
        NSLog(@"MEXICO");
    }
    
  
}



- (IBAction)llegar:(id)sender
{
    //NSString *url = [NSString stringWithFormat:@"http://maps.google.com/maps?ll=%f,%f", lat, lon];
    //[[UIApplication sharedApplication] openURL:[NSURL URLWithString:url]];
    
    NSLocale *currentLocale = [NSLocale currentLocale];  // get the current locale.
    NSString *countryCode = [currentLocale objectForKey:NSLocaleCountryCode];
    NSLog(@"%@",countryCode);
    
    if ([countryCode isEqualToString:@"ES"]) {
        [self openMapToLatitude:41.3931404	 longitude:2.1690308];
        NSLog(@"ESPAÑA");
    }
    else if ([countryCode isEqualToString:@"AR"]){
        [self openMapToLatitude:-34.5963882	 longitude:-58.3842504];
        NSLog(@"ARGENTINA");
    }
    else if ([countryCode isEqualToString:@"UY"]){
        [self openMapToLatitude:41.3931404	 longitude:2.1690308];
        NSLog(@"URUGAY");
    }
    else if ([countryCode isEqualToString:@"DO"]){
        [self openMapToLatitude:18.4652314	 longitude:-69.92147];
        NSLog(@"REPUBLICA DOM");
    }
    else if ([countryCode isEqualToString:@"MX"]){
        [self openMapToLatitude:19.393664	 longitude:-99.1767865];
        NSLog(@"MEXICO");
    }

    
    
    
}

- (void)openMapToLatitude:(double)lat longitude:(double) lon
{
    NSString *url = [NSString stringWithFormat:@"http://maps.apple.com/maps?ll=%f,%f", lat, lon];
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:url]];
    
}

- (IBAction)mail:(id)sender {
    
    
    
    // Email Subject
    NSString *emailTitle = @"Contacto a través de Pronokal App";
    // Email Content
    NSString *messageBody = @"";
    // To address
    NSLocale *currentLocale = [NSLocale currentLocale];  // get the current locale.
    NSString *countryCode = [currentLocale objectForKey:NSLocaleCountryCode];
    NSLog(@"%@",countryCode);

    if ([countryCode isEqualToString:@"ES"]) {
         toRecipents2 = [NSArray arrayWithObject:@"info@pronokal.com"];
        NSLog(@"ESPAÑA");
    }
    else if ([countryCode isEqualToString:@"AR"]){
         toRecipents2 = [NSArray arrayWithObject:@"info.argentina@pronokal.com"];
        NSLog(@"ARGENTINA");
    }
    else if ([countryCode isEqualToString:@"UY"]){
         toRecipents2 = [NSArray arrayWithObject:@"info.uruguay@pronokal.com"];
        NSLog(@"URUGAY");
    }
    else if ([countryCode isEqualToString:@"DO"]){
         toRecipents2 = [NSArray arrayWithObject:@"info.do@pronokal.com"];
        NSLog(@"REPUBLICA DOM");
    }
    else if ([countryCode isEqualToString:@"MX"]){
         toRecipents2 = [NSArray arrayWithObject:@"infomex@pronokal.com"];
        NSLog(@"MEXICO");
    }

    
    
   
    
    MFMailComposeViewController *mc = [[MFMailComposeViewController alloc] init];
    mc.mailComposeDelegate = self;
    [mc setSubject:emailTitle];
    [mc setMessageBody:messageBody isHTML:NO];
    [mc setToRecipients:toRecipents2];
    
    // Present mail view controller on screen
    [self presentViewController:mc animated:YES completion:NULL];
    
}

- (void) mailComposeController:(MFMailComposeViewController *)controller didFinishWithResult:(MFMailComposeResult)result error:(NSError *)error
{
    switch (result)
    {
        case MFMailComposeResultCancelled:
            NSLog(@"Mail cancelled");
            break;
        case MFMailComposeResultSaved:
            NSLog(@"Mail saved");
            break;
        case MFMailComposeResultSent:
            NSLog(@"Mail sent");
            break;
        case MFMailComposeResultFailed:
            NSLog(@"Mail sent failure: %@", [error localizedDescription]);
            break;
        default:
            break;
    }
    
    // Close the Mail Interface
    [self dismissViewControllerAnimated:YES completion:NULL];
}

- (void)viewDidLoad {
    [scroller setScrollEnabled:YES];
    [scroller setContentSize:CGSizeMake(320,400)];
    [super viewDidLoad];
    textoEspana.hidden=YES;
    textoArgentina.hidden=YES;
    textoUrugay.hidden=YES;
    textoRepDom.hidden=YES;
    textoMexico.hidden=YES;
    
    NSLocale *currentLocale = [NSLocale currentLocale];  // get the current locale.
    NSString *countryCode = [currentLocale objectForKey:NSLocaleCountryCode];
    NSLog(@"%@",countryCode);
    if ([countryCode isEqualToString:@"ES"]) {
        textoEspana.hidden=NO;
        llegarGroup.hidden=YES;
     
        [super updateViewConstraints];
        [principal addConstraint:[NSLayoutConstraint constraintWithItem:llamarGroup
                                                              attribute:NSLayoutAttributeTop
                                                              relatedBy:NSLayoutRelationEqual
                                                                 toItem:principal
                                                              attribute:NSLayoutAttributeTop
                                                             multiplier:1.0
                                                               constant:200]];
        [super updateViewConstraints];
        [principal addConstraint:[NSLayoutConstraint constraintWithItem:mailGroup
                                                              attribute:NSLayoutAttributeTop
                                                              relatedBy:NSLayoutRelationEqual
                                                                 toItem:principal
                                                              attribute:NSLayoutAttributeTop
                                                             multiplier:1.0
                                                               constant:320]];

     
        
        NSLog(@"ESPAÑA");
    }
    else if ([countryCode isEqualToString:@"AR"]){
        textoArgentina.hidden=NO;
        NSLog(@"ARGENTINA");
    }
    else if ([countryCode isEqualToString:@"UY"]){
        textoUrugay.hidden=NO;
        NSLog(@"URUGAY");
    }
    else if ([countryCode isEqualToString:@"DO"]){
        textoRepDom.hidden=NO;
        NSLog(@"REPUBLICA DOM");
    }
    else if ([countryCode isEqualToString:@"MX"]){
        textoMexico.hidden=NO;
        NSLog(@"MEXICO");
    }
    else if ([countryCode isEqualToString:@"US"]){
        NSLog(@"USA");
    }
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
