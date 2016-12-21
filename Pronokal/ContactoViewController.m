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
    else if ([countryCode isEqualToString:@"GB"]){
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"tel:00442071832391"]];
        NSLog(@"LLAMANDO A UK");
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
    else if ([countryCode isEqualToString:@"BR"]){
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"tel:31753000"]];
        NSLog(@"BR");
    }
    else if ([countryCode isEqualToString:@"PT"]){
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"tel:707782012"]];
        NSLog(@"PT");
    }
    else if ([countryCode isEqualToString:@"BE"]){
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"tel:070354712"]];
        NSLog(@"BE");
    }
    else if ([countryCode isEqualToString:@"NL"]){
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"tel:0855605103"]];
        NSLog(@"NL");
    }
    else if ([countryCode isEqualToString:@"LU"]){
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"tel:080029150"]];
        NSLog(@"LU");
    }
    
    
  
}



- (IBAction)llegar:(id)sender
{
    //NSString *url = [NSString stringWithFormat:@"http://maps.google.com/maps?ll=%f,%f", lat, lon];
    //[[UIApplication sharedApplication] openURL:[NSURL URLWithString:url]];
    
    NSLocale *currentLocale = [NSLocale currentLocale];  // get the current locale.
    NSString *countryCode = [currentLocale objectForKey:NSLocaleCountryCode];
    NSLog(@"%@",countryCode);
    
    if ([countryCode isEqualToString:@"ES"]||[countryCode isEqualToString:@"BR"]) {
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
        [self openMapToLatitude:19.3696996	 longitude:-99.1788074];
        NSLog(@"MEXICO");
    }

    else if ([countryCode isEqualToString:@"GB"]){
        [self openMapToLatitude:51.5173187	 longitude:-0.1484144];
        NSLog(@"IR A UK");
    }
    
    else if ([countryCode isEqualToString:@"BR"]){
        
        [self openMapToLatitude:41.3931404	 longitude:2.1690308];
        NSLog(@"IR A BR");
    }
    else if ([countryCode isEqualToString:@"CH"]){
        
        [self openMapToLatitude:41.3931404	 longitude:2.1690308];
        NSLog(@"IR A CH");
    }
    else if ([countryCode isEqualToString:@"BE"]){
        
        [self openMapToLatitude:41.3931404	 longitude:2.1690308];
        NSLog(@"IR A BE");
    }
    else if ([countryCode isEqualToString:@"NL"]){
        
        [self openMapToLatitude:41.3931404	 longitude:2.1690308];
        NSLog(@"IR A NL");
    }
    else if ([countryCode isEqualToString:@"LU"]){
        
        [self openMapToLatitude:41.3931404	 longitude:2.1690308];
        NSLog(@"IR A LU");
    }
    
    else if ([countryCode isEqualToString:@"PT"]){
        [self openMapToLatitude:38.7385683	 longitude:-9.1460575];
        NSLog(@"IR A PT");
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
    else if ([countryCode isEqualToString:@"GB"]){
        toRecipents2 = [NSArray arrayWithObject:@"info.uk@pronokal.com"];
        NSLog(@"UK");
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
    else if ([countryCode isEqualToString:@"BR"]){
        toRecipents2 = [NSArray arrayWithObject:@"info.brasil@pronokal.com"];
        NSLog(@"BRASIL");
    }
    else if ([countryCode isEqualToString:@"PT"]){
        toRecipents2 = [NSArray arrayWithObject:@"info.pt@clubpronokal.com"];
        NSLog(@"PORTUGAL");
    }
    else if ([countryCode isEqualToString:@"CH"]){
        toRecipents2 = [NSArray arrayWithObject:@"info.ch@pronokal.com"];
        NSLog(@"SUIZA");
    }
    else if ([countryCode isEqualToString:@"BE"]){
        toRecipents2 = [NSArray arrayWithObject:@"info.belgie@pronokal.com"];
        NSLog(@"BELGIUM");
    }
    else if ([countryCode isEqualToString:@"NL"]){
        toRecipents2 = [NSArray arrayWithObject:@"info.nederland@pronokal.com"];
        NSLog(@"NEDERLAND");
    }
    else if ([countryCode isEqualToString:@"LU"]){
        toRecipents2 = [NSArray arrayWithObject:@"info.luxembourg@pronokal.com"];
        NSLog(@"LUXEMBURG");
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
    textoPortugal.hidden=YES;
    textoUK.hidden=YES;
    
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
    else if ([countryCode isEqualToString:@"PT"]){
        textoPortugal.hidden=NO;
        NSLog(@"PORTUGAL");
    }
    else if ([countryCode isEqualToString:@"GB"]){
        textoUK.hidden=NO;
        NSLog(@"UK");
    }
    else if ([countryCode isEqualToString:@"UY"]){
        llegarGroup.hidden=YES;
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
    else if ([countryCode isEqualToString:@"BR"]){
        llegarGroup.hidden=YES;
        textoEspana.hidden=YES;
        NSLog(@"BR");
    }
    else if ([countryCode isEqualToString:@"CH"]){
        llegarGroup.hidden=YES;
        NSLog(@"CH");
    }
    else if ([countryCode isEqualToString:@"BE"]){
        llegarGroup.hidden=YES;
        NSLog(@"BE");
    }
    else if ([countryCode isEqualToString:@"NL"]){
        llegarGroup.hidden=YES;
        NSLog(@"NL");
    }
    else if ([countryCode isEqualToString:@"LU"]){
        llegarGroup.hidden=YES;
        NSLog(@"LU");
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
