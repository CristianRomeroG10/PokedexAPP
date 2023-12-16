//
//  Pokemon.swift
//  PokedexApp
//
//  Created by Cristian guillermo Romero garcia on 10/11/23.
//

import Foundation

struct Pokemon: Codable{
    var name: String
    var pokedexNumber: String
    var pokedexInfo: String
    var pokemonType: String
    var evolutionChain: String
    var pokeImage: String
}

class PokemonModel{
    var pokemonArray: [Pokemon]
    var filterArray: [Pokemon] = []
    
    init(){
        pokemonArray = 
        [
            Pokemon(name: "Bulbasaur", pokedexNumber: "001", pokedexInfo: "Un Pokémon de tipo Planta que parece una rana. Sus semillas brotan de su espalda", pokemonType: "Planta/Veneno", evolutionChain: "Bulbasaur > Ivyaur > Venusaur", pokeImage: "Bulbasaur"),
            Pokemon(name: "Charmander", pokedexNumber: "004", pokedexInfo: "Un pokemon de tipo Fuego que parece una lagartija. Su cola siempre esta ardiendo", pokemonType: "Fuego", evolutionChain: "Charmander>Charmeleon>Charizard", pokeImage: "Charmander"),
            Pokemon(name: "Squirtle", pokedexNumber: "007", pokedexInfo: "Un Pokemon tipo Agua que parece una tortuga. Su cuerpo está cubierto de una capa gruesa y resistente", pokemonType: "Agua", evolutionChain: "Squirtle>Wartotle>Blastoise", pokeImage: "Squirtle"),
            Pokemon(name: "Chikorita", pokedexNumber: "152", pokedexInfo: "Un pokemon de tipo Planta que parece una tierna hierba. Es muy sensible a su entorno", pokemonType: "Planta", evolutionChain: "Chikorita>Bayleef>Meganium", pokeImage: "Chikorita"),
            Pokemon(name: "Cyndaquil", pokedexNumber: "155", pokedexInfo: "Un pokemon de tipo Fuego que parece un puercospin. Su pelaje es tan suave como la seda", pokemonType: "Fuego", evolutionChain: "Cyndaquil>Quilava>Typhlosion", pokeImage: "Cyndaquil"),
            Pokemon(name: "Totodile", pokedexNumber: "158", pokedexInfo: "Un pokemon de tipo Agua que parece un cocodrilo. Es muy jugueton y le encanta nadar", pokemonType: "Agua", evolutionChain: "Totodile>Croconaw>Feraligatr", pokeImage: "Totodile"),
            Pokemon(name: "Treecko", pokedexNumber: "252", pokedexInfo: "Un pokemon de tipo Planta que parece un lagarto. Es muy rapido y agil", pokemonType: "Planta", evolutionChain: "Treecko>Grovyle>Sceptile", pokeImage: "Treecko"),
            Pokemon(name: "Torchic", pokedexNumber: "255", pokedexInfo: "Un pokemon de tipo Fuego que parece un polluelo. Es muy fuerte y tiene una gran resistencia", pokemonType: "Fuego", evolutionChain: "Torchic>Combusken>Blaziken", pokeImage: "Torchic"),
            Pokemon(name: "Mudkip", pokedexNumber: "258", pokedexInfo: "Un pokemon de tió Agua que parece un renacuajo. Es muy resistente y tiene una gran fuerza", pokemonType: "Agua", evolutionChain: "Mudkip>Marshtomp>", pokeImage: "Mudkip"),
            Pokemon(name: "Snivy", pokedexNumber: "494", pokedexInfo: "Un pokemon de tipo Planta que parece una serpiente. Es muy inteligente y calculador", pokemonType: "Planta", evolutionChain: "Snivy>Servine>Serperior", pokeImage: "Snivy"),
            Pokemon(name: "Teping", pokedexNumber: "497", pokedexInfo: "Un pokémon de tipo Fuego que parece un cerdo. Es muy activo y le encanta comer", pokemonType: "Fuego", evolutionChain: "Teping>Pignite>Emboar", pokeImage: "Teping"),
            Pokemon(name: "Oshawott", pokedexNumber: "500", pokedexInfo: "Un pokemon de tipo Agua que parece una nutria. Es muy valiente y le encanta proteger a sus amigos", pokemonType: "Agua", evolutionChain: "Oshawott>Dewoot>Samurott", pokeImage: "Oshawott")
        ]
    }
    
    func getArrayCount() -> Int{
        filterArray.count
    }
    
    
}

let model = PokemonModel()
