//
//  FavoritePersistance.swift
//  PokedexApp
//
//  Created by Fernando Gutierrez on 17/11/23.
//

import Foundation

var favorites: [Pokemon] = []

let defaults = UserDefaults.standard

func guardarDatos(){
    if let encodeData = try? JSONEncoder().encode(favorites){
        //guardar el json codificado en userdefaults con una clava especifica
        defaults.set(encodeData,forKey: "myArrayKey")
    }
}

func cargarDatos(){
    if let saveData = defaults.data(forKey: "myArrayKey"), let decodeArray = try? JSONDecoder().decode([Pokemon].self, from: saveData){
        favorites = decodeArray
    }
}
