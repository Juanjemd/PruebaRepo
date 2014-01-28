//
//  ViewController.m
//  GitOtroEjemplo
//
//  Created by Juanje Mendoza Durán on 18/12/13.
//  Copyright (c) 2013 Juanje Mendoza Durán. All rights reserved.
//

#import "ViewController.h"

typedef void (^MiTipoBloque)(int);

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    MiTipoBloque mibloque;
    
    // Creamos una variable numerica con la directiva __block que hace
    // que podamos modificar su valor desde el interior del bloque
    // siendo nosotros los responsables de lo que pudiera ocurrir.
    // En caso de no indicar __block nos saltaría un error en XCode
    // impidiendo modificar total desde dentro del bloque.
    __block int total = 0;
    
    // Rellenamos el bloque con código
    mibloque = ^ void (int valor) {
        total += valor;
        NSLog(@"Total: %d",total);
    };
    
    // Ejecutamos varias veces el bloque para comprobar
    mibloque(1);
    mibloque(1);
    mibloque(1);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)clickBoton:(id)sender {
    
    NSLog(@"Click en el boton");
}
@end
