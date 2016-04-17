//
//  CalculadorahViewController.m
//  Pronokal
//
//  Created by Javier Martin Espinosa on 19/10/15.
//  Copyright © 2015 Hopper. All rights reserved.
//

#import "CalculadorahViewController.h"

@interface CalculadorahViewController ()

@end

@implementation CalculadorahViewController

-(IBAction)calcular:(id)sender{
    pantallaresultado.hidden=NO;
    
    NSString *input1=peso.text;
    float speso=[input1 floatValue];
    
    NSString *input2=altura.text;
    float saltura=[input2 floatValue];
    
    NSString *input3=edad.text;
    float sedad=[input3 floatValue];
    
    NSString *resultadot;
    
    float total;
    
    
    total=speso/((saltura/100)*(saltura/100));
    resultadot=[NSString stringWithFormat:@"%.2f",total];
    
    resultado.text=resultadot;
    
    if (total<18.5) {
        flechabajopeso.hidden=NO;
        textobajopeso.hidden=NO;
    }
    
    if (total<24.99 && total>18.51) {
        flechanormal.hidden=NO;
        textonormal.hidden=NO;
    }
    
    if (total<26.99 && total>25) {
        flechasobrepeso.hidden=NO;
        textosobrepeso.hidden=NO;
    }
    
    if (total<29.99 && total>27) {
        flechapreobesidad.hidden=NO;
        textopreobesidad.hidden=NO;
    }
    
    if (total>30) {
        flechaobesidad.hidden=NO;
        textoobesidad.hidden=NO;
    }

}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    pantallaresultado.hidden=YES;
    
    flechabajopeso.hidden=YES;
    flechanormal.hidden=YES;
    flechasobrepeso.hidden=YES;
    flechapreobesidad.hidden=YES;
    flechaobesidad.hidden=YES;
    
    textobajopeso.hidden=YES;
    textonormal.hidden=YES;
    textosobrepeso.hidden=YES;
    textopreobesidad.hidden=YES;
    textoobesidad.hidden=YES;
    
    [scrollcalc setScrollEnabled:YES];
    [scrollcalc setContentSize:CGSizeMake(320,600)];
    
    UITapGestureRecognizer *tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(ocultaTeclado:)];
    [tapGesture setNumberOfTouchesRequired:1];
    [[self view] addGestureRecognizer:tapGesture];
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void)ocultaTeclado:(UITapGestureRecognizer *)sender{
    //Aquí hay que declarar todos los UITextField de nuestra escena
    [peso resignFirstResponder];
    [altura resignFirstResponder];
    [edad resignFirstResponder];
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

