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
    botonContactarFinal.hidden=NO;
    grafica.hidden=NO;
    pantallagrafica.hidden=NO;
    redirigir.hidden=NO;
    [scrollcalc setScrollEnabled:YES];
    [scrollcalc setContentSize:CGSizeMake(320,1300)];
}

-(IBAction)prePantallaResultado:(id)sender{
    NSLog(@"PREPANTALLA RESULTADO");
    pantallaresultado.hidden=NO;
    prepantallaresultado.hidden=YES;
}

-(IBAction)calcular:(id)sender{
    prepantalla2.hidden=YES;
    botonContactar.hidden=YES;
    NSLog(@"CALCULA PESO IDEAL....TEST");
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
        botonContactar.hidden=NO;
        botonCalcular.hidden=YES;
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
        NSLocale *currentLocale = [NSLocale currentLocale];  // get the current locale.
        NSString *countryCode = [currentLocale objectForKey:NSLocaleCountryCode];
        NSString * language = [[NSLocale preferredLanguages] objectAtIndex:0];
        
        if ([countryCode isEqualToString:@"PT"]){
            prepantallaresultado.hidden=YES;
            prepantalla2.hidden=NO;
            peso.text=@"";
            altura.text=@"";
            UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Introduziu algum dado incorreto."
                                                            message:@"Por favor, reveja os campos. Obrigado."
                                                           delegate:nil
                                                  cancelButtonTitle:@"Cerrar"
                                                  otherButtonTitles:nil];
            [alert show];
        }
        else if ([countryCode isEqualToString:@"GB"]){
            prepantallaresultado.hidden=YES;
            prepantalla2.hidden=NO;
            peso.text=@"";
            altura.text=@"";
            UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"It seems that you entered an incorrect entry."
                                                            message:@"Please review the fields. Thank you."
                                                           delegate:nil
                                                  cancelButtonTitle:@"Close"
                                                  otherButtonTitles:nil];
            [alert show];
        }
        else if ([countryCode isEqualToString:@"NL"]){
            prepantallaresultado.hidden=YES;
            prepantalla2.hidden=NO;
            peso.text=@"";
            altura.text=@"";
            UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Het lijkt erop dat u een onjuiste invoer ingevoerd."
                                                            message:@"Lees de velden. Dank je."
                                                           delegate:nil
                                                  cancelButtonTitle:@"Close"
                                                  otherButtonTitles:nil];
            [alert show];
        }
        
        else if ([language isEqualToString:@"nl-BE"]){
            prepantallaresultado.hidden=YES;
            prepantalla2.hidden=NO;
            peso.text=@"";
            altura.text=@"";
            UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Het lijkt erop dat u een onjuiste invoer ingevoerd."
                                                            message:@"Lees de velden. Dank je."
                                                           delegate:nil
                                                  cancelButtonTitle:@"Close"
                                                  otherButtonTitles:nil];
            [alert show];
        }
        else if ([language isEqualToString:@"fr-BE"]){
            prepantallaresultado.hidden=YES;
            prepantalla2.hidden=NO;
            peso.text=@"";
            altura.text=@"";
            UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Il semble que vous avez entré une entrée incorrecte."
                                                            message:@"S’il vous plaît examiner les domaines. Je vous remercie."
                                                           delegate:nil
                                                  cancelButtonTitle:@"Fermez"
                                                  otherButtonTitles:nil];
            [alert show];
        }
        else if ([countryCode isEqualToString:@"FR"]){
            prepantallaresultado.hidden=YES;
            prepantalla2.hidden=NO;
            peso.text=@"";
            altura.text=@"";
            UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Il semble que vous avez entré une entrée incorrecte."
                                                            message:@"S’il vous plaît examiner les domaines. Je vous remercie."
                                                           delegate:nil
                                                  cancelButtonTitle:@"Fermez"
                                                  otherButtonTitles:nil];
            [alert show];
        }
        else{
            prepantallaresultado.hidden=YES;
            prepantalla2.hidden=NO;
            peso.text=@"";
            altura.text=@"";
            UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Has introducido algún dato erroneo."
                                                            message:@"Por favor, revisa los campos. Gracias."
                                                           delegate:nil
                                                  cancelButtonTitle:@"Cerrar"
                                                  otherButtonTitles:nil];
            [alert show];
            
        }
        
       
      
        
    }
    
    
    ///////////////
    
    total=speso/((saltura/100.0)*(saltura/100.0));
    total2=(saltura/100.0)*(saltura/100.0)*21.5;
    total3=speso-total2;
    
    duracionTemp=total3*(100.0/80.0);
    
    
    
    if (duracionTemp<10.0) {
        duracionRed=8.0;
    }
    
    if (duracionTemp>10.0 && duracionTemp<=15.0) {
        duracionRed=10.0;
    }
    
    if (duracionTemp>15 && duracionTemp<=20.0) {
        duracionRed=12.0;
    }
    
    if (duracionTemp>20.0 && duracionTemp<=25.0) {
        duracionRed=14.0;
    }
    
    if (duracionTemp>25.0 && duracionTemp<=30.0) {
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
    
    
    
    
    
    
    
    NSLocale *currentLocale = [NSLocale currentLocale];  // get the current locale.
    NSString *countryCode = [currentLocale objectForKey:NSLocaleCountryCode];
    
    NSString *spais=countryCode;
    NSString *lang=[spais lowercaseString];
    NSString * language = [[NSLocale preferredLanguages] objectAtIndex:0];
    NSLog(@"%@",countryCode);
    resultadot=[NSString stringWithFormat:@"%.1f",total];
    resultadot2=[NSString stringWithFormat:@"%.1f",total2];
    resultadot3=[NSString stringWithFormat:@"%.1f",total3];
    resultadot4=[NSString stringWithFormat:@"%d",duracionRound];
    
//    if ([countryCode isEqualToString:@"NL"]){
//        resultadot4 = [resultadot4 stringByAppendingString:@" Weken"];
//    }
//    else if ([countryCode isEqualToString:@"ES"]){
//        resultadot4 = [resultadot4 stringByAppendingString:@" Semanas"];
//    }
//    else if ([countryCode isEqualToString:@"EN"]){
//        resultadot4 = [resultadot4 stringByAppendingString:@" Weekens"];
//    }
//    else if ([countryCode isEqualToString:@"FR"]){
//        resultadot4 = [resultadot4 stringByAppendingString:@" Semaines"];
//    }
//    else if ([countryCode isEqualToString:@"PT"]){
//        resultadot4 = [resultadot4 stringByAppendingString:@" Semmanas"];
//    }
//    else if ([countryCode isEqualToString:@"BR"]){
//        resultadot4 = [resultadot4 stringByAppendingString:@" Semmanas"];
//    }
    if([language isEqualToString:@"nl-BE"]){
        resultadot4 = [resultadot4 stringByAppendingString:@" Weken"];
    }
    else if([language isEqualToString:@"nl-FR"]){
        resultadot4 = [resultadot4 stringByAppendingString:@" Semaines"];
    }
    else if([language isEqualToString:@"nl-NL"]){
        resultadot4 = [resultadot4 stringByAppendingString:@" Weken"];
    }

//    if ([countryCode isEqualToString:@"NL"]){
//        resultadot4 = [resultadot4 stringByAppendingString:@" Weken"];
//    }
    else if ([countryCode isEqualToString:@"ES"]){
        resultadot4 = [resultadot4 stringByAppendingString:@" Semanas"];
    }
    else if ([countryCode isEqualToString:@"EN"]){
        resultadot4 = [resultadot4 stringByAppendingString:@" Weekens"];
    }
    else if ([countryCode isEqualToString:@"FR"]){
        resultadot4 = [resultadot4 stringByAppendingString:@" Semaines"];
    }
    else if ([countryCode isEqualToString:@"PT"]){
        resultadot4 = [resultadot4 stringByAppendingString:@" Semanas"];
    }
    else if ([countryCode isEqualToString:@"BR"]){
        resultadot4 = [resultadot4 stringByAppendingString:@" semanas"];
    }
    else if ([countryCode isEqualToString:@"BE"]){
        resultadot4 = [resultadot4 stringByAppendingString:@" Semaines"];
    }
    else if ([countryCode isEqualToString:@"CH"]){
        resultadot4 = [resultadot4 stringByAppendingString:@" Semaines"];
    }
    else if ([countryCode isEqualToString:@"GB"]){
        resultadot4 = [resultadot4 stringByAppendingString:@" Weeks"];
    }

    
    resultado.text=resultadot;
    pesoIdeal.text=resultadot2;
    pesoPerder.text=resultadot3;
    duracion.text=resultadot4;
    
   
    
//    NSString *spais=countryCode;
//    NSString *lang=[spais lowercaseString];
//    NSString * language = [[NSLocale preferredLanguages] objectAtIndex:0];

    
  
    NSLog(@"%@",lang);
    if([lang isEqualToString:@"ch"]){
        lang=@"fr";
        NSLog(@"PAIS");
    }
    
    if([lang isEqualToString:@"gb"]){
        lang=@"en";
        NSLog(@"PAIS");
    }
    if([language isEqualToString:@"nl-BE"]){
        lang=@"nl";
        NSLog(@"PAIS");
    }
    if([language isEqualToString:@"fr-BE"]){
        lang=@"fr";
        NSLog(@"PAIS");
    }
    
    
    NSString *website = [NSString stringWithFormat:@"http://www.pronokalgroupapp.com/pnkv/svg/chart.php?sexo=m&altura=%.1f&peso=%.1f&edad=%.f&lang=%@", saltura, speso, sedad, lang];
    //urlGrafica.text=website;
    
    //NSString *website = @"http://www.pronokalgroupapp.com/pnkv/svg/chart.php?sexo=m&altura=170&peso=80&edad=33&&pais=countryCode";
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


-(IBAction)prueba:(id)sender{
    NSLog(@"PRUEBAAAAA");

    
}

/////////////////////Calculo para hombre////////////////////////

-(IBAction)calcularHombre:(id)sender{
    NSLog(@"CalculoHombre");
    prepantallaresultado.hidden=NO;
    botonContactar.hidden=YES;
    
    
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
    
    if (totalimc<18.5) {
        flechabajopeso.hidden=NO;
        textobajopeso.hidden=NO;
    }
    
    if (totalimc<24.99 && totalimc>18.51) {
        flechanormal.hidden=NO;
        textonormal.hidden=NO;
        botonContactar.hidden=NO;
        botonCalcular.hidden=YES;
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
        NSLocale *currentLocale = [NSLocale currentLocale];  // get the current locale.
        NSString *countryCode = [currentLocale objectForKey:NSLocaleCountryCode];
        NSString * language = [[NSLocale preferredLanguages] objectAtIndex:0];
        
        if ([countryCode isEqualToString:@"PT"]){
            prepantallaresultado.hidden=YES;
            prepantalla.hidden=NO;
            peso.text=@"";
            altura.text=@"";
            UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Introduziu algum dado incorreto."
                                                            message:@"Por favor, reveja os campos. Obrigado."
                                                           delegate:nil
                                                  cancelButtonTitle:@"Cerrar"
                                                  otherButtonTitles:nil];
            [alert show];
        }
        else if ([countryCode isEqualToString:@"GB"]){
            prepantallaresultado.hidden=YES;
            prepantalla.hidden=NO;
            peso.text=@"";
            altura.text=@"";
            UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"It seems that you entered an incorrect entry."
                                                            message:@"Please review the fields. Thank you."
                                                           delegate:nil
                                                  cancelButtonTitle:@"Close"
                                                  otherButtonTitles:nil];
            [alert show];
        }
        else if ([countryCode isEqualToString:@"NL"]){
            prepantallaresultado.hidden=YES;
            prepantalla.hidden=NO;
            peso.text=@"";
            altura.text=@"";
            UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Het lijkt erop dat u een onjuiste invoer ingevoerd."
                                                            message:@"Lees de velden. Dank je."
                                                           delegate:nil
                                                  cancelButtonTitle:@"Close"
                                                  otherButtonTitles:nil];
            [alert show];
        }
        
        else if ([language isEqualToString:@"nl-BE"]){
            prepantallaresultado.hidden=YES;
            prepantalla.hidden=NO;
            peso.text=@"";
            altura.text=@"";
            UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Het lijkt erop dat u een onjuiste invoer ingevoerd."
                                                            message:@"Lees de velden. Dank je."
                                                           delegate:nil
                                                  cancelButtonTitle:@"Close"
                                                  otherButtonTitles:nil];
            [alert show];
        }
        else if ([language isEqualToString:@"fr-BE"]){
            prepantallaresultado.hidden=YES;
            prepantalla.hidden=NO;
            peso.text=@"";
            altura.text=@"";
            UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Il semble que vous avez entré une entrée incorrecte."
                                                            message:@"S’il vous plaît examiner les domaines. Je vous remercie."
                                                           delegate:nil
                                                  cancelButtonTitle:@"Fermez"
                                                  otherButtonTitles:nil];
            [alert show];
        }
        else if ([countryCode isEqualToString:@"FR"]){
            prepantallaresultado.hidden=YES;
            prepantalla.hidden=NO;
            peso.text=@"";
            altura.text=@"";
            UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Il semble que vous avez entré une entrée incorrecte.."
                                                            message:@"S’il vous plaît examiner les domaines. Je vous remercie."
                                                           delegate:nil
                                                  cancelButtonTitle:@"Fermez"
                                                  otherButtonTitles:nil];
            [alert show];
        }
        else{
            prepantallaresultado.hidden=YES;
            prepantalla.hidden=NO;
            peso.text=@"";
            altura.text=@"";
            UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Has introducido algún dato erroneo."
                                                            message:@"Por favor, revisa los campos. Gracias."
                                                           delegate:nil
                                                  cancelButtonTitle:@"Cerrar"
                                                  otherButtonTitles:nil];
            [alert show];
        }
        
    }
    
    
    
    ///////////////
    
    total=speso/((saltura/100.0)*(saltura/100.0));
    total2=(saltura/100.0)*(saltura/100.0)*24;
    total3=speso-total2;
    
    duracionTemp=total3*(100.0/80.0);
    
    
    
    if (duracionTemp<10.0) {
        duracionRed=8.0;
    }
    
    if (duracionTemp>10.0 && duracionTemp<=15.0) {
        duracionRed=10.0;
    }
    
    if (duracionTemp>15 && duracionTemp<=20.0) {
        duracionRed=12.0;
    }
    
    if (duracionTemp>20.0 && duracionTemp<=25.0) {
        duracionRed=14.0;
    }
    
    if (duracionTemp>25.0 && duracionTemp<=30.0) {
        duracionRed=16.0;
    }
    
    if (duracionTemp>30.0) {
        duracionRed=20.0;
    }
    
    duracionTratamiento=((total3*0.4)/2.6)+((total3*0.2)/2.35)+((total3*0.2)/2.25)+duracionRed;
    
    int duracionRound = lroundf(duracionTratamiento);
   // NSLog(@"Duracion tratamiento: %@d",duracionRound);
    if (total3<0){
        sinperder.hidden=NO;
    }
    
    resultadot=[NSString stringWithFormat:@"%.1f",total];
    resultadot2=[NSString stringWithFormat:@"%.1f",total2];
    resultadot3=[NSString stringWithFormat:@"%.1f",total3];
    resultadot4=[NSString stringWithFormat:@"%d",duracionRound];
    
    NSLocale *currentLocale = [NSLocale currentLocale];  // get the current locale.
    NSString *countryCode = [currentLocale objectForKey:NSLocaleCountryCode];
    
    NSString *spais=countryCode;
    NSString *lang=[spais lowercaseString];
    NSString * language = [[NSLocale preferredLanguages] objectAtIndex:0];
    
    NSLog(@"%@",countryCode);
    
    

    
//    if ([countryCode isEqualToString:@"NL"]){
//        resultadot4 = [resultadot4 stringByAppendingString:@" Weken"];
//    }
//    else if ([countryCode isEqualToString:@"ES"]){
//        resultadot4 = [resultadot4 stringByAppendingString:@" Semanas"];
//    }
//    else if ([countryCode isEqualToString:@"EN"]){
//        resultadot4 = [resultadot4 stringByAppendingString:@" Weekens"];
//    }
    if([language isEqualToString:@"nl-BE"]){
        resultadot4 = [resultadot4 stringByAppendingString:@" Weken"];
    }
    else if([language isEqualToString:@"nl-FR"]){
        resultadot4 = [resultadot4 stringByAppendingString:@" Semaines"];
    }
    else if([language isEqualToString:@"nl-NL"]){
        resultadot4 = [resultadot4 stringByAppendingString:@" Weken"];
    }

    else if ([countryCode isEqualToString:@"ES"]){
        resultadot4 = [resultadot4 stringByAppendingString:@" Semanas"];
    }
    else if ([countryCode isEqualToString:@"EN"]){
        resultadot4 = [resultadot4 stringByAppendingString:@" Weekens"];
    }
    else if ([countryCode isEqualToString:@"FR"]){
        resultadot4 = [resultadot4 stringByAppendingString:@" Semaines"];
    }
    else if ([countryCode isEqualToString:@"PT"]){
        resultadot4 = [resultadot4 stringByAppendingString:@" Semanas"];
    }
    else if ([countryCode isEqualToString:@"BR"]){
        resultadot4 = [resultadot4 stringByAppendingString:@" semanas"];
    }
    else if ([countryCode isEqualToString:@"BE"]){
        resultadot4 = [resultadot4 stringByAppendingString:@" Semaines"];
    }
    else if ([countryCode isEqualToString:@"CH"]){
        resultadot4 = [resultadot4 stringByAppendingString:@" Semaines"];
    }
    else if ([countryCode isEqualToString:@"GB"]){
        resultadot4 = [resultadot4 stringByAppendingString:@" Weeks"];
    }
    
    

    resultado.text=resultadot;
    pesoIdeal.text=resultadot2;
    pesoPerder.text=resultadot3;
    duracion.text=resultadot4;
    
    
    
//    NSString *spais=countryCode;
//    NSString *lang=[spais lowercaseString];
//    NSString * language = [[NSLocale preferredLanguages] objectAtIndex:0];
    
    
    
    NSLog(@"%@",lang);
    if([lang isEqualToString:@"ch"]){
        lang=@"fr";
        NSLog(@"PAIS");
    }
    
    if([lang isEqualToString:@"gb"]){
        lang=@"en";
        NSLog(@"PAIS");
    }
    if([language isEqualToString:@"nl-BE"]){
        lang=@"nl";
        NSLog(@"PAIS");
    }
    if([language isEqualToString:@"fr-BE"]){
        lang=@"fr";
        NSLog(@"PAIS");
    }
    
    
    NSString *website = [NSString stringWithFormat:@"http://www.pronokalgroupapp.com/pnkv/svg/chart.php?sexo=h&altura=%.1f&peso=%.1f&edad=%.f&lang=%@", saltura, speso, sedad, lang];
    //urlGrafica.text=website;
    
    //NSString *website = @"http://www.pronokalgroupapp.com/pnkv/svg/chart.php?sexo=m&altura=170&peso=80&edad=33";
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
    
    botonContactarFinal.hidden=YES;
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
