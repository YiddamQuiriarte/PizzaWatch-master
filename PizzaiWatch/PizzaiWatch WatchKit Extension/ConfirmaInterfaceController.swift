//
//  ConfirmaInterfaceController.swift
//  PizzaiWatch
//
//  Created by Quiriarte on 16/07/16.
//  Copyright © 2016 Quiriarte. All rights reserved.
//

import WatchKit
import Foundation


class ConfirmaInterfaceController: WKInterfaceController
{

    @IBOutlet var confirmaTamaño: WKInterfaceLabel!
    @IBOutlet var confirmaMasa: WKInterfaceLabel!
    @IBOutlet var confirmaQueso: WKInterfaceLabel!
    @IBOutlet var confirmaIng: WKInterfaceLabel!
    
    @IBOutlet var buttonConfirmarOrden: WKInterfaceButton!
    
    
    override func awakeWithContext(context: AnyObject?)
    {
        super.awakeWithContext(context)
        // Configure interface objects here.
    }

    override func willActivate()
    {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        
        buttonConfirmarOrden.setEnabled(false)
        
        confirmaTamaño.setText(ValoresPizza.valoresTamaño[ValoresPizza.tamaño])
        confirmaMasa.setText(ValoresPizza.valoresMasa[ValoresPizza.masa])
        confirmaQueso.setText(ValoresPizza.valoresQueso[ValoresPizza.queso])
        confirmaIng.setText(ingredientesResultado().0)
        confirmaIng.setTextColor(ingredientesResultado().2)
        
        if(ingredientesResultado().1 == 1)
        {
            //Habilitar boton
            buttonConfirmarOrden.setEnabled(true)
        }
    }

    override func didDeactivate()
    {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    func ingredientesResultado() -> (String, Int, UIColor)
    {
        var ingredientes : String = ""
        var bandera = 0
        var suma = 0
        
        for i in 0...9
        {
            //print(ValoresPizza.ingredientesOnOff[i])
            suma += ValoresPizza.ingredientesOnOff[i]
        }
        
        if(suma > 5)
        {
            return ("Los ingredientes no pueden ser más de 5",0, UIColor(colorLiteralRed: 255, green: 0, blue: 0, alpha: 1))
        }
        
        if (suma == 0)
        {
            return ("Selecciona por lo menos un ingrediente",0, UIColor(colorLiteralRed: 255, green: 0, blue: 0, alpha: 1))
        }
        
        for i in 0...9
        {
            let valor = ValoresPizza.ingredientesOnOff[i]
            
            if(valor == 1)
            {
                if bandera == 0
                {
                    ingredientes += ValoresPizza.ingredientes[i]
                    bandera=1
                }
                else
                {
                    ingredientes += ", " + ValoresPizza.ingredientes[i]
                }
                
                //print(ValoresPizza.ingredientes[i])
            }
        }
        
        //print(ingredientes)
        
        return (ingredientes, 1, UIColor(colorLiteralRed: 0, green: 255, blue: 0, alpha: 1));
    }

    @IBAction func buttonNextFinal()
    {
        pushControllerWithName("identificadorFinal", context: nil)
    }
}
