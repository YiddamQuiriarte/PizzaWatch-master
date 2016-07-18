//
//  MasaInterfaceController.swift
//  PizzaiWatch
//
//  Created by Quiriarte on 16/07/16.
//  Copyright © 2016 Quiriarte. All rights reserved.
//

import WatchKit
import Foundation


class MasaInterfaceController: WKInterfaceController {

    @IBOutlet var pickerMasa: WKInterfacePicker!
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        
        inicializaMasaPicker(pickerMasa)
        pickerMasa.setSelectedItemIndex(ValoresPizza.masa)
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

    @IBAction func pickerActionMasa(value: Int)
    {
        ValoresPizza.masa = value
        print("Masa: \(ValoresPizza.valoresMasa[value])")
    }
    
    @IBAction func buttonNextQueso()
    {
        pushControllerWithName("identificadorQueso", context: nil)
    }
}
