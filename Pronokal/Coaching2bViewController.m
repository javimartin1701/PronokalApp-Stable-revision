//
//  Coaching2bViewController.m
//  Pronokal
//
//  Created by Javier Martin Espinosa on 22/10/15.
//  Copyright © 2015 Hopper. All rights reserved.
//

#import "Coaching2bViewController.h"

@interface Coaching2bViewController ()

@end

@implementation Coaching2bViewController

-(IBAction)empezar:(id)sender{
    paso1.hidden=NO;
}

-(IBAction)siguiente1:(id)sender{
    paso2.hidden=NO;
}

-(IBAction)siguiente2:(id)sender{
    paso3.hidden=NO;
}

-(IBAction)siguiente3:(id)sender{
    paso4.hidden=NO;
}

-(IBAction)finalizar:(id)sender{
    informeFinal.hidden=NO;
    
}

-(IBAction)slidetheslider:(id)sender{
    
    caso1.hidden=YES;
    caso2.hidden=YES;
    caso3.hidden=YES;

    
    int total1=0;
    int total2=0;
    int total3=0;
    int total4=0;
    
    int sAmasD=0;
    int sBmasC=0;
    
    float valor1 = slider1.value;
    int valor2 = slider2.value;
    int valor3 = slider3.value;
    
    int valor4 = slider4.value;
    int valor5 = slider5.value;
    int valor6 = slider6.value;
    
    int valor7 = slider7.value;
    int valor8 = slider8.value;
    int valor9 = slider9.value;
    
    int valor10 = slider10.value;
    int valor11 = slider11.value;
    int valor12 = slider12.value;
    
    total1 = valor1 + valor2 + valor3;
    total2 = valor4 + valor5 + valor6;
    total3 = valor7 + valor8 + valor9;
    total4 = valor10 + valor11 + valor12;
    
    
    label1.text = [NSString stringWithFormat:@"%d", total1];
    label12.text = [NSString stringWithFormat:@"%d", total1];
    label13.text = [NSString stringWithFormat:@"%d", total1];
    label14.text = [NSString stringWithFormat:@"%d", total1];
    label2.text = [NSString stringWithFormat:@"%d", total2];
    label23.text = [NSString stringWithFormat:@"%d", total2];
    label24.text = [NSString stringWithFormat:@"%d", total2];
    label3.text = [NSString stringWithFormat:@"%d", total3];
    label34.text = [NSString stringWithFormat:@"%d", total3];
    label4.text = [NSString stringWithFormat:@"%d", total4];
    
    sAmasD = total1 + total4;
    sBmasC = total2 + total3;
    
    amasd.text = [NSString stringWithFormat:@"%d", sAmasD];
    bmasc.text = [NSString stringWithFormat:@"%d", sBmasC];
    
    int A=0;
    int B=0;
    
    
    A=sAmasD;
    B=sBmasC;
    
    if (A>B) {
        
        caso1.hidden=NO;
        
    }
    
    if (A<B) {
        caso2.hidden=NO;
        
        
    }
    
    if (A==B) {
        caso3.hidden=NO;
        
    }
    
    
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [scroller setScrollEnabled:YES];
    [scroller setContentSize:CGSizeMake(320,720)];
    
    paso1.hidden=YES;
    paso2.hidden=YES;
    paso3.hidden=YES;
    paso4.hidden=YES;
    informeFinal.hidden=YES;
    
    caso1.hidden=YES;
    caso2.hidden=YES;
    caso3.hidden=YES;
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
