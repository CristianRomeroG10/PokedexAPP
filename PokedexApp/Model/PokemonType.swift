//
//  Type.swift
//  PokedexApp
//
//  Created by Cristian guillermo Romero garcia on 11/11/23.
//

import Foundation

struct PokemonType{
    var typeName: String
    var typeImage: String
    var doubleDamageDealt: [TypeAffected]
    var doubleDamgeReceived: [TypeAffected]
    var HalfDamgeDealt: [TypeAffected]
    var HalfDamageReceived: [TypeAffected]
    var notEffectedBy: [TypeAffected]
    var noEffectAgainst: [TypeAffected]
}

struct TypeAffected{
    var typeOne: String?
    var typeTwo: String?
    var typeThree: String?
}

class PokemonTypeModel{
    var typeArray: [PokemonType]
    init(){
        typeArray =
        [
            PokemonType(typeName: "Fuego", typeImage: "Fuego", doubleDamageDealt: [TypeAffected(typeOne: "Agua",typeTwo: "Tierra",typeThree: "Roca")], doubleDamgeReceived:[TypeAffected(typeOne: "Hielo",typeTwo: "Agua",typeThree: "Roca")], HalfDamgeDealt:[TypeAffected(typeOne: "Agua",typeTwo: "Tierra",typeThree: "Roca")], HalfDamageReceived: [TypeAffected(typeOne: "Hielo", typeTwo: "Agua",typeThree: "Roca")], notEffectedBy: [TypeAffected(typeOne: "Normal",typeTwo: "Fuego",typeThree: "Siniestro")], noEffectAgainst: [TypeAffected(typeOne: "Agua",typeTwo: "Tierra",typeThree: "Roca")]),
            PokemonType(typeName: "Agua", typeImage: "Agua", doubleDamageDealt: [TypeAffected(typeOne: "Fuego",typeTwo: "Tierra",typeThree: "Roca")], doubleDamgeReceived: [TypeAffected(typeOne: "Electrico",typeTwo: "Planta")], HalfDamgeDealt: [TypeAffected(typeOne: "Electrico",typeTwo: "Planta")], HalfDamageReceived: [TypeAffected(typeOne: "Fuego",typeTwo: "Tierra",typeThree: "Roca")], notEffectedBy: [TypeAffected(typeOne: "Bicho",typeTwo: "Veneno",typeThree: "Roca")], noEffectAgainst: [TypeAffected(typeOne: "Fuego",typeTwo: "Tierra",typeThree: "Roca")]),
            PokemonType(typeName: "Planta", typeImage: "Planta", doubleDamageDealt: [TypeAffected(typeOne: "Agua",typeTwo: "Tierra",typeThree: "Roca")], doubleDamgeReceived: [TypeAffected(typeOne: "Fuego",typeTwo: "Volador",typeThree: "Hielo")], HalfDamgeDealt:[TypeAffected(typeOne: "Fuego",typeTwo: "Volador",typeThree: "Hielo")], HalfDamageReceived: [TypeAffected(typeOne: "Agua",typeTwo: "Tierra",typeThree: "Roca")], notEffectedBy: [TypeAffected(typeOne: "Bicho",typeTwo: "Veneno",typeThree: "Siniestro")], noEffectAgainst: [TypeAffected(typeOne: "Fuego",typeTwo: "Volador",typeThree: "Hielo")]),
            PokemonType(typeName: "Electrico", typeImage: "Electrico", doubleDamageDealt: [TypeAffected(typeOne: "Agua",typeTwo: "Tierra")], doubleDamgeReceived: [TypeAffected(typeOne: "Volador", typeTwo: "Tierra")], HalfDamgeDealt:[TypeAffected(typeOne: "Agua",typeTwo: "Tierra")], HalfDamageReceived: [TypeAffected(typeOne: "Volador",typeTwo: "Tierra")], notEffectedBy: [TypeAffected(typeOne: "Tierra",typeTwo: "Roca",typeThree: "Dragon")], noEffectAgainst: [TypeAffected(typeOne: "Volador",typeTwo: "Tierra")])
           
        ]
    }
}


