//
//  CalculadoraViewController.h
//  Pronokal
//
//  Created by Javier Martin Espinosa on 13/10/15.
//  Copyright © 2015 Hopper. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CalculadoraViewController : UIViewController{
    IBOutlet UIScrollView *scrollcalc;
    IBOutlet UITextField *peso;
    IBOutlet UITextField *altura;
    IBOutlet UITextField *edad;
    IBOutlet UILabel *resultado;
    
    IBOutlet UIView *pantallaresultado;
    
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
    
}

-(IBAction)calcular:(id)sender;

@end
