//
//  PesoViewController.m
//  Pronokal
//
//  Created by Javier Martin Espinosa on 27/10/15.
//  Copyright © 2015 Hopper. All rights reserved.
//

#import "PesoViewController.h"

@interface PesoViewController ()

@end

@implementation PesoViewController

-(IBAction)vetGrafica:(id)sender{
    grafica.hidden=NO;
    pantallagrafica.hidden=NO;
    redirigir.hidden=NO;
    [scrollcalc setScrollEnabled:YES];
    [scrollcalc setContentSize:CGSizeMake(320,1300)];
}

-(IBAction)prePantallaResultado:(id)sender{
    pantallaresultado.hidden=NO;
}

-(IBAction)calcular:(id)sender{
    prepantallaresultado.hidden=NO;
    
  
    ////Calculadora IMC
    
    
    NSString *input1=peso.text;
    float speso=[input1 floatValue];
    
    NSString *input2=altura.text;
    float saltura=[input2 floatValue];
    if (saltura<2) {
        saltura=saltura*100;
    }
    
    NSString *input3=edad.text;
    float sedad=[input3 floatValue];
    
    NSString *resultadot;
    NSString *resultadot2;
    NSString *resultadot3;
    NSString *resultadot4;
    NSString *resultadotimc;
    
    float total;
    float total2;
    float total3;
    float totalimc;
    
    
    float duracionTratamiento;
    float duracionRed=0.0;
    float duracionTemp;
    
    /////////////
    totalimc=speso/((saltura/100)*(saltura/100));
    resultadotimc=[NSString stringWithFormat:@"%.2f",totalimc];
    
    resultado2.text=resultadotimc;
    
    if (totalimc>12 && totalimc<18.5) {
        flechabajopeso.hidden=NO;
        textobajopeso.hidden=NO;
    }
    
    if (totalimc<24.99 && totalimc>18.51) {
        flechanormal.hidden=NO;
        textonormal.hidden=NO;
    }
    
    if (totalimc<26.99 && totalimc>25) {
        flechasobrepeso.hidden=NO;
        textosobrepeso.hidden=NO;
    }
    
    if (totalimc<29.99 && totalimc>27) {
        flechapreobesidad.hidden=NO;
        textopreobesidad.hidden=NO;
    }
    
    if (totalimc>30) {
        flechaobesidad.hidden=NO;
        textoobesidad.hidden=NO;
    }
    
    if (totalimc<12 || totalimc>48 ){
        NSLog(@"Fuera de rango");
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Has introducido algún dato erroneo."
                                                        message:@"Por favor, revisa los campos. Gracias."
                                                       delegate:nil
                                              cancelButtonTitle:@"Cerrar"
                                              otherButtonTitles:nil];
        [alert show];
        
    }
    
    
    ///////////////
    
    total=speso/((saltura/100.0)*(saltura/100.0));
    total2=(saltura/100.0)*(saltura/100.0)*21.5;
    total3=speso-total2;
    
    duracionTemp=total3*(100.0/80.0);
    
    
    
    if (duracionTemp<10.0) {
        duracionRed=8.0;
    }
    
    if (duracionTemp>10.0 && duracionTratamiento<=15.0) {
        duracionRed=10.0;
    }
    
    if (duracionTemp>15 && duracionTratamiento<=20.0) {
        duracionRed=12.0;
    }
    
    if (duracionTemp>20.0 && duracionTratamiento<=25.0) {
        duracionRed=14.0;
    }
    
    if (duracionTemp>25.0 && duracionTratamiento<=30.0) {
        duracionRed=16.0;
    }
    
    if (duracionTemp>30.0) {
        duracionRed=20.0;
    }
    
    duracionTratamiento=((total3*0.4)/2.6)+((total3*0.2)/2.35)+((total3*0.2)/2.25)+duracionRed;
    
    int duracionRound = lroundf(duracionTratamiento);
    
    if (total3<0){
        sinperder.hidden=NO;
    }

    resultadot=[NSString stringWithFormat:@"%.1f",total];
    resultadot2=[NSString stringWithFormat:@"%.1f",total2];
    resultadot3=[NSString stringWithFormat:@"%.1f",total3];
    resultadot4=[NSString stringWithFormat:@"%d",duracionRound];
    
    resultadot4 = [resultadot4 stringByAppendingString:@" Semanas"];
    
    resultado.text=resultadot;
    pesoIdeal.text=resultadot2;
    pesoPerder.text=resultadot3;
    duracion.text=resultadot4;
    
    
    
    
    NSString *website = [NSString stringWithFormat:@"http://prepronokalgroupappcom.hostings.nexica.net/pnkv/svg/chart.php?sexo=m&altura=%.1f&peso=%.1f&edad=%.f", saltura, speso, sedad];
    //urlGrafica.text=website;
    
    //NSString *website = @"http://prepronokalgroupappcom.hostings.nexica.net/pnkv/svg/chart.php?sexo=m&altura=170&peso=80&edad=33";
    NSURL *url = [NSURL URLWithString:website];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    
    grafica.scrollView.scrollEnabled = NO;
    
    
    
    
    
    [grafica loadRequest:request];

    
    
    
 
    
    
    
    
    
    /*
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
     
     */
}


/////////////////////Calculo para hombre////////////////////////

-(IBAction)calcularHombre:(id)sender{
    prepantallaresultado.hidden=NO;
    
    
    ////Calculadora IMC
    
    
    NSString *input1=peso.text;
    float speso=[input1 floatValue];
    
    NSString *input2=altura.text;
    float saltura=[input2 floatValue];
    
    NSString *input3=edad.text;
    float sedad=[input3 floatValue];
    
    NSString *resultadot;
    NSString *resultadot2;
    NSString *resultadot3;
    NSString *resultadot4;
    NSString *resultadotimc;
    
    float total;
    float total2;
    float total3;
    float totalimc;
    
    
    float duracionTratamiento;
    float duracionRed=0.0;
    float duracionTemp;
    
    /////////////
    totalimc=speso/((saltura/100)*(saltura/100));
    resultadotimc=[NSString stringWithFormat:@"%.2f",totalimc];
    
    resultado2.text=resultadotimc;
    
    if (totalimc<18.5) {
        flechabajopeso.hidden=NO;
        textobajopeso.hidden=NO;
    }
    
    if (totalimc<24.99 && totalimc>18.51) {
        flechanormal.hidden=NO;
        textonormal.hidden=NO;
    }
    
    if (totalimc<26.99 && totalimc>25) {
        flechasobrepeso.hidden=NO;
        textosobrepeso.hidden=NO;
    }
    
    if (totalimc<29.99 && totalimc>27) {
        flechapreobesidad.hidden=NO;
        textopreobesidad.hidden=NO;
    }
    
    if (totalimc>30) {
        flechaobesidad.hidden=NO;
        textoobesidad.hidden=NO;
    }
    
    
    ///////////////
    
    total=speso/((saltura/100.0)*(saltura/100.0));
    total2=(saltura/100.0)*(saltura/100.0)*24;
    total3=speso-total2;
    
    duracionTemp=total3*(100.0/80.0);
    
    
    
    if (duracionTemp<10.0) {
        duracionRed=8.0;
    }
    
    if (duracionTemp>10.0 && duracionTratamiento<=15.0) {
        duracionRed=10.0;
    }
    
    if (duracionTemp>15 && duracionTratamiento<=20.0) {
        duracionRed=12.0;
    }
    
    if (duracionTemp>20.0 && duracionTratamiento<=25.0) {
        duracionRed=14.0;
    }
    
    if (duracionTemp>25.0 && duracionTratamiento<=30.0) {
        duracionRed=16.0;
    }
    
    if (duracionTemp>30.0) {
        duracionRed=20.0;
    }
    
    duracionTratamiento=((total3*0.4)/2.6)+((total3*0.2)/2.35)+((total3*0.2)/2.25)+duracionRed;
    
    int duracionRound = lroundf(duracionTratamiento);
    
    if (total3<0){
        sinperder.hidden=NO;
    }
    
    resultadot=[NSString stringWithFormat:@"%.1f",total];
    resultadot2=[NSString stringWithFormat:@"%.1f",total2];
    resultadot3=[NSString stringWithFormat:@"%.1f",total3];
    resultadot4=[NSString stringWithFormat:@"%d",duracionRound];
    
    resultadot4 = [resultadot4 stringByAppendingString:@" Semanas"];
    
    resultado.text=resultadot;
    pesoIdeal.text=resultadot2;
    pesoPerder.text=resultadot3;
    duracion.text=resultadot4;
    
    
    
    
    NSString *website = [NSString stringWithFormat:@"http://prepronokalgroupappcom.hostings.nexica.net/pnkv/svg/chart.php?sexo=m&altura=%.1f&peso=%.1f&edad=%.f", saltura, speso, sedad];
    //urlGrafica.text=website;
    
    //NSString *website = @"http://prepronokalgroupappcom.hostings.nexica.net/pnkv/svg/chart.php?sexo=m&altura=170&peso=80&edad=33";
    NSURL *url = [NSURL URLWithString:website];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    
    grafica.scrollView.scrollEnabled = NO;
    
    
    
    
    
    [grafica loadRequest:request];
    
    
    
    
    
    
    
    
    
    
    /*
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
     
     */
}





- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
  
    prepantallaresultado.hidden=YES;
    pantallaresultado.hidden=YES;
    grafica.hidden=YES;
    pantallagrafica.hidden=YES;
    
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
    
    redirigir.hidden=YES;
    sinperder.hidden=YES;
    
    [scrollcalc setScrollEnabled:YES];
    [scrollcalc setContentSize:CGSizeMake(320,500)];
    
    UITapGestureRecognizer *tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(ocultaTeclado:)];
    [tapGesture setNumberOfTouchesRequired:1];
    [[self view] addGestureRecognizer:tapGesture];
    
    
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
