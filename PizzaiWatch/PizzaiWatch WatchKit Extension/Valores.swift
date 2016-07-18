//
//  Valores.swift
//  PizzasApp
//
//  Created by Israel Durán Martínez on 13/11/15.
//  Copyright © 2016 Quiriarte. All rights reserved.
//

import Foundation
import WatchKit

struct ValoresPizza
{
    static var tamaño : Int = 0
    static var masa : Int = 0
    static var queso : Int = 0
    //static var ingrediemtes : Int = 0
    
    static var valoresTamaño = [0: "Chica", 1: "Mediana", 2: "Grande"]
    static var valoresMasa = [0: "Delgada", 1: "Crujiente", 2: "Gruesa"]
    static var valoresQueso = [0: "Mozarela", 1: "Cheddar", 2: "Parmesano", 3: "Sin Queso"]
    static var ingredientesOnOff = [0,0,0,0,0,0,0,0,0,0]
    static var ingredientes = ["Jamón","Pepperoni","Pavo","Salchicha","Aceituna","Cebolla","Pimiento","Piña","Anchoa","Chorizo"]
}

func inicializaTamañoPicker(picker : WKInterfacePicker)
{
    let itemChica : WKPickerItem = WKPickerItem()
    itemChica.title = "Chica"
    itemChica.caption = "Pizza Chica"
    
    let itemMediana : WKPickerItem = WKPickerItem()
    itemMediana.title = "Mediana"
    itemMediana.caption = "Pizza Mediana"
    
    let itemGrande : WKPickerItem = WKPickerItem()
    itemGrande.title = "Grande"
    itemGrande.caption = "Pizza Grande"
    
    let arregloItems : [WKPickerItem] = [itemChica, itemMediana, itemGrande]
    
    picker.setItems(arregloItems)
}

func inicializaMasaPicker(picker : WKInterfacePicker)
{
    let itemDelgada : WKPickerItem = WKPickerItem()
    itemDelgada.title = "Delgada"
    itemDelgada.caption = "Masa Delgada"
    
    let itemCrujiente : WKPickerItem = WKPickerItem()
    itemCrujiente.title = "Crujiente"
    itemCrujiente.caption = "Masa Crujiente"
    
    let itemGruesa : WKPickerItem = WKPickerItem()
    itemGruesa.title = "Gruesa"
    itemGruesa.caption = "Masa Gruesa"
    
    let arregloItems : [WKPickerItem] = [itemDelgada, itemCrujiente, itemGruesa]
    
    picker.setItems(arregloItems)
}

func inicializaQuesoPicker(picker : WKInterfacePicker)
{
    let itemMozarela : WKPickerItem = WKPickerItem()
    itemMozarela.title = "Mozarela"
    itemMozarela.caption = "Queso Mozarela"
    
    let itemCheddar : WKPickerItem = WKPickerItem()
    itemCheddar.title = "Cheddar"
    itemCheddar.caption = "Queso Cheddar"
    
    let itemParmesano : WKPickerItem = WKPickerItem()
    itemParmesano.title = "Parmesano"
    itemParmesano.caption = "Queso Parmesano"
    
    let itemSinQueso : WKPickerItem = WKPickerItem()
    itemSinQueso.title = "Sin queso"
    itemSinQueso.caption = "Sin queso"
    
    let arregloItems : [WKPickerItem] = [itemMozarela, itemCheddar, itemParmesano, itemSinQueso]
    
    picker.setItems(arregloItems)
}
