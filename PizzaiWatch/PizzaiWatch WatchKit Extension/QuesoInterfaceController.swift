//
//  QuesoInterfaceController.swift
//  PizzaiWatch
//
//  Created by Quiriarte on 16/07/16.
//  Copyright © 2016 Quiriarte. All rights reserved.
//

import WatchKit
import Foundation


class QuesoInterfaceController: WKInterfaceController {

    @IBOutlet var pickerQueso: WKInterfacePicker!
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        
        inicializaQuesoPicker(pickerQueso)
        pickerQueso.setSelectedItemIndex(ValoresPizza.queso)
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    @IBAction func pickerActionQueso(value: Int)
    {
        ValoresPizza.queso = value
        print("Queso: \(ValoresPizza.valoresQueso[value])")
    }

    @IBAction func buttonNextIngredientes()
    {
        pushControllerWithName("identificadorIngredientes", context: nil)
    }
}
