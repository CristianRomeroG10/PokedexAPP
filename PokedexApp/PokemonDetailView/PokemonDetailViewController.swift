//
//  PokemonDetailViewController.swift
//  PokedexApp
//
//  Created by Cristian guillermo Romero garcia on 10/11/23.
//

import UIKit

class PokemonDetailViewController: UIViewController {
    
    var pokemon: Pokemon = Pokemon(name: "", pokedexNumber: "", pokedexInfo: "", pokemonType: "", evolutionChain: "", pokeImage: "")
    var pokemons: [Pokemon] = []

    //MARK: Outlets
    
    @IBOutlet weak var pokemonDetailTableView: UITableView!{
        didSet{
            pokemonDetailTableView.register(UINib(nibName: "PokemonDetailTableViewCell", bundle: nil), forCellReuseIdentifier: "PokemonDetailCell")
        }
    }
    @IBOutlet weak var favoritesButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpUI()
        
    }
    
    func setUpUI(){
        self.title = pokemon.name
        self.navigationController?.navigationBar.prefersLargeTitles = true
        pokemonDetailTableView.dataSource = self
        pokemonDetailTableView.delegate = self
        
    }
    
    @IBAction func favoritesButtonPressed(_ sender: UIButton) {
        if favorites.contains(where: { Pokemon in
            Pokemon.name == pokemon.name
        }) {
            alertFavoriteCantBeAdded()
        } else {
            favorites.append(Pokemon(name: pokemon.name, pokedexNumber: pokemon.pokedexNumber, pokedexInfo: pokemon.pokedexInfo, pokemonType: pokemon.pokemonType, evolutionChain: pokemon.evolutionChain, pokeImage: pokemon.pokeImage))
            guardarDatos()
            alertFavoriteAdded()
        }
    }
    
    func alertFavoriteAdded() {
        let alert = UIAlertController(title: "Favorite added", message: "You added this pokemon to the favorites list", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Ok", style: .default))
        self.present(alert, animated: true, completion: nil)
    }
    
    func alertFavoriteCantBeAdded(){
        let alert = UIAlertController(title: "Pokemon can't be added", message: "The pokemon it's already a favorite", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Ok", style: .default))
        self.present(alert, animated: true, completion: nil)
    }

}

extension PokemonDetailViewController: UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        4
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellOne = tableView.dequeueReusableCell(withIdentifier: "PokemonDetailCell")as! PokemonDetailTableViewCell
        cellOne.pokemonImage.image = UIImage(named: pokemon.pokeImage)
        cellOne.pokemonNameLabel.text =  pokemon.name
        cellOne.pokemonNumberLabel.text = "Numero: \(pokemon.pokedexNumber)"
        let cellTwo = UITableViewCell(style: .default, reuseIdentifier: "CellTwo")
        cellTwo.textLabel?.text = "Hola"
        cellTwo.textLabel?.numberOfLines = 0
        
        switch indexPath.section{
        case 0: return cellOne
        case 1: cellTwo.textLabel?.text = pokemon.pokemonType
            return cellTwo
        case 2: cellTwo.textLabel?.text = pokemon.pokedexInfo
            return cellTwo
        case 3: cellTwo.textLabel?.text = pokemon.evolutionChain
            return cellTwo
        default: return cellTwo
        }
        
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
    switch section{
        case 0: return "Pokemon"
        case 1: return "Tipo"
        case 2: return "Información"
        case 3: return "Evolución"
    default: return "Hola"
    }
        
    }
    
}

extension PokemonDetailViewController: UITableViewDelegate{
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        switch indexPath.section{
        case 0: return 100
        case 2: return 75
        default: return 30
        }
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
