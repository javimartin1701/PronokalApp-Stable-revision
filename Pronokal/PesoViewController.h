//
//  PesoViewController.h
//  Pronokal
//
//  Created by Javier Martin Espinosa on 27/10/15.
//  Copyright © 2015 Hopper. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PesoViewController : UIViewController{
    IBOutlet UIScrollView *scrollcalc;
    IBOutlet UITextField *peso;
    IBOutlet UITextField *altura;
    IBOutlet UITextField *edad;
    IBOutlet UILabel *resultado;
    
    IBOutlet UIButton *redirigir;
    
    IBOutlet UIView *sinperder;
    
    IBOutlet UILabel *pesoIdeal;
    IBOutlet UILabel *pesoPerder;
    
    
    IBOutlet UIView *prepantallaresultado;
    IBOutlet UIView *pantallaresultado;
    IBOutlet UIView *pantallagrafica;
    
    IBOutlet UILabel *resultado2;
    
    IBOutlet UIImageView *flechabajopeso;
    IBOutlet UIImageView *flechanormal;
    IBOutlet UIImageView *flechasobrepeso;
    IBOutlet UIImageView *flechapreobesidad;
    IBOutlet UIImageView *flechaobesidad;
    
    IBOutlet UIView *textobajopeso;
    IBOutlet UIView *textonormal;
    IBOutlet UIView *textosobrepeso;
    IBOutlet UIView *textopreobesidad;
    IBOutlet UIView *textoobesidad;
    
    
    IBOutlet UIWebView *grafica;
    
    IBOutlet UILabel *duracion;
    
    //IBOutlet UILabel *urlGrafica;

}
-(IBAction)prePantallaResultado:(id)sender;

-(IBAction)calcular:(id)sender;
-(IBAction)calcularHombre:(id)sender;

-(IBAction)vetGrafica:(id)sender;

@end
