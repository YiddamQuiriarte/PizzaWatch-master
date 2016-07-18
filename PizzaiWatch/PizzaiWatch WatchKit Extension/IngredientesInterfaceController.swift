//
//  IngredientesInterfaceController.swift
//  PizzaiWatch
//
//  Created by Quiriarte on 16/07/16.
//  Copyright © 2016 Quiriarte. All rights reserved.
//

import WatchKit
import Foundation


class IngredientesInterfaceController: WKInterfaceController
{
    @IBOutlet var jamon: WKInterfaceSwitch!
    @IBOutlet var pepperoni: WKInterfaceSwitch!
    @IBOutlet var pavo: WKInterfaceSwitch!
    @IBOutlet var salchicha: WKInterfaceSwitch!
    @IBOutlet var aceituna: WKInterfaceSwitch!
    @IBOutlet var cebolla: WKInterfaceSwitch!
    @IBOutlet var pimiento: WKInterfaceSwitch!
    @IBOutlet var piña: WKInterfaceSwitch!
    @IBOutlet var anchoa: WKInterfaceSwitch!
    @IBOutlet var chorizo: WKInterfaceSwitch!
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
    }

    override func willActivate()
    {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        
        //Jamon
        if ValoresPizza.ingredientesOnOff[0] == 1
        {jamon.setOn(true)}
        else
        {jamon.setOn(false)}
        
        //Peperoni
        if ValoresPizza.ingredientesOnOff[1] == 1
        {pepperoni.setOn(true)}
        else
        {pepperoni.setOn(false)}
        
        //Pavo
        if ValoresPizza.ingredientesOnOff[2] == 1
        {pavo.setOn(true)}
        else
        {pavo.setOn(false)}
        
        //Salchicha
        if ValoresPizza.ingredientesOnOff[3] == 1
        {salchicha.setOn(true)}
        else
        {salchicha.setOn(false)}
        
        //Aceituna
        if ValoresPizza.ingredientesOnOff[4] == 1
        {aceituna.setOn(true)}
        else
        {aceituna.setOn(false)}
        
        //Cebolla
        if ValoresPizza.ingredientesOnOff[5] == 1
        {cebolla.setOn(true)}
        else
        {cebolla.setOn(false)}
        
        //Pimiento
        if ValoresPizza.ingredientesOnOff[6] == 1
        {pimiento.setOn(true)}
        else
        {pimiento.setOn(false)}
        
        //Piña
        if ValoresPizza.ingredientesOnOff[7] == 1
        {piña.setOn(true)}
        else
        {piña.setOn(false)}
        
        //Anchoa
        if ValoresPizza.ingredientesOnOff[8] == 1
        {anchoa.setOn(true)}
        else
        {anchoa.setOn(false)}
        
        //Chorizo
        if ValoresPizza.ingredientesOnOff[9] == 1
        {chorizo.setOn(true)}
        else
        {chorizo.setOn(false)}
    }

    override func didDeactivate()
    {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
        
    }
    
    @IBAction func accionJamon(value: Bool)
    {
        if (value == true)
        {ValoresPizza.ingredientesOnOff[0] = 1}
        else
        {ValoresPizza.ingredientesOnOff[0] = 0}
        
        print("Jamon: \(ValoresPizza.ingredientesOnOff[0])")
    }

    @IBAction func accionPeperoni(value: Bool)
    {
        if (value == true)
        {ValoresPizza.ingredientesOnOff[1] = 1}
        else
        {ValoresPizza.ingredientesOnOff[1] = 0}
        
        print("Pepperoni: \(ValoresPizza.ingredientesOnOff[1])")
    }
    
    @IBAction func accionPavo(value: Bool)
    {
        if (value == true)
        {ValoresPizza.ingredientesOnOff[2] = 1}
        else
        {ValoresPizza.ingredientesOnOff[2] = 0}
        
        print("Pavo: \(ValoresPizza.ingredientesOnOff[2])")
    }
    @IBAction func accionSalchicha(value: Bool)
    {
        if (value == true)
        {ValoresPizza.ingredientesOnOff[3] = 1}
        else
        {ValoresPizza.ingredientesOnOff[3] = 0}
        
        print("Pepperoni: \(ValoresPizza.ingredientesOnOff[3])")
    }
    
    @IBAction func accionAceituna(value: Bool)
    {
        if (value == true)
        {ValoresPizza.ingredientesOnOff[4] = 1}
        else
        {ValoresPizza.ingredientesOnOff[4] = 0}
        
        print("Aceituna: \(ValoresPizza.ingredientesOnOff[4])")
    }
    
    @IBAction func accionCebolla(value: Bool)
    {
        if (value == true)
        {ValoresPizza.ingredientesOnOff[5] = 1}
        else
        {ValoresPizza.ingredientesOnOff[5] = 0}
        
        print("Cebolla: \(ValoresPizza.ingredientesOnOff[5])")
    }
    
    @IBAction func accionPimiento(value: Bool)
    {
        if (value == true)
        {ValoresPizza.ingredientesOnOff[6] = 1}
        else
        {ValoresPizza.ingredientesOnOff[6] = 0}
        
        print("Pimiento: \(ValoresPizza.ingredientesOnOff[6])")
    }
    
    @IBAction func accionPiña(value: Bool)
    {
        if (value == true)
        {ValoresPizza.ingredientesOnOff[7] = 1}
        else
        {ValoresPizza.ingredientesOnOff[7] = 0}
        
        print("Piña: \(ValoresPizza.ingredientesOnOff[7])")
    }
    
    @IBAction func accionAnchoa(value: Bool)
    {
        if (value == true)
        {ValoresPizza.ingredientesOnOff[8] = 1}
        else
        {ValoresPizza.ingredientesOnOff[8] = 0}
        
        print("Anchoa: \(ValoresPizza.ingredientesOnOff[8])")
    }
    
    @IBAction func accionChorizo(value: Bool)
    {
        if (value == true)
        {ValoresPizza.ingredientesOnOff[9] = 1}
        else
        {ValoresPizza.ingredientesOnOff[9] = 0}
        
        print("Chorizo: \(ValoresPizza.ingredientesOnOff[9])")
    }
 

    @IBAction func buttonNextConfirmacion()
    {
        pushControllerWithName("identificadorConfirmacion", context: nil)
    }
}
