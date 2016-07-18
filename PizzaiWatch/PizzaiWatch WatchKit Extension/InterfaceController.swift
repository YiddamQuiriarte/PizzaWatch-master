//
//  InterfaceController.swift
//  PizzaiWatch WatchKit Extension
//
//  Created by Quiriarte on 16/07/16.
//  Copyright © 2016 Quiriarte. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBOutlet var pickerTamaño: WKInterfacePicker!
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        
        
        inicializaTamañoPicker(pickerTamaño)
        pickerTamaño.setSelectedItemIndex(ValoresPizza.tamaño)
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    @IBAction func buttonNextMasa()
    {
        pushControllerWithName("identificadorMasa", context: nil)
    }
    
    
    @IBAction func pickerActionTamaño(value: Int)
    {
        ValoresPizza.tamaño = value
        print("Tamaño: \(ValoresPizza.valoresTamaño[value])")
    }

}
