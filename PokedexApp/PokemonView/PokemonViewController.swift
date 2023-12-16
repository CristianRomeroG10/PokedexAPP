//
//  PokemonViewController.swift
//  PokedexApp
//
//  Created by Cristian guillermo Romero garcia on 10/11/23.
//

import UIKit

class PokemonViewController: UIViewController {
    
   
    //MARK: Outlets
    @IBOutlet weak var pokemonTableView: UITableView!{
        didSet{
            pokemonTableView.register(UINib(nibName: "PokemonTableViewCell", bundle: nil), forCellReuseIdentifier: "PokemonCell")
        }
    }
    @IBOutlet weak var pokemonSearchBar: UISearchBar!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Pokemon"
        model.filterArray = model.pokemonArray
        pokemonTableView.dataSource = self
        pokemonTableView.delegate = self

    }
}

extension PokemonViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        model.getArrayCount()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PokemonCell")as! PokemonTableViewCell
        cell.pokemonImage.image = UIImage(named: model.filterArray[indexPath.row].pokeImage)
        cell.pokemonNameLabel.text = model.filterArray[indexPath.row].name
        cell.descriptionPokemonLabel.text = model.filterArray[indexPath.row].pokedexNumber
        cell.accessoryType = .disclosureIndicator
        return cell
        
    }
    
    
    
    
}
extension PokemonViewController: UITableViewDelegate{
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        89
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let pokemonDetailViewContoller = PokemonDetailViewController(nibName: "PokemonDetailViewController", bundle: nil)
        pokemonDetailViewContoller.pokemon = model.filterArray[indexPath.row]
        navigationController?.pushViewController(pokemonDetailViewContoller, animated: true)
        
    }
    
    
}

extension PokemonViewController: UISearchBarDelegate {
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        print(searchText)
        model.filterArray = []
        if searchText == "" {
            model.filterArray = model.pokemonArray
        }
        for element in 0..<model.pokemonArray.count-1{
            if model.pokemonArray[element].name.uppercased().contains(searchText.uppercased()) || model.pokemonArray[element].pokedexNumber.contains(searchText){
                model.filterArray.append(Pokemon(name: model.pokemonArray[element].name, pokedexNumber: model.pokemonArray[element].pokedexNumber, pokedexInfo: model.pokemonArray[element].pokedexInfo, pokemonType: model.pokemonArray[element].pokemonType, evolutionChain: model.pokemonArray[element].evolutionChain, pokeImage: model.pokemonArray[element].pokeImage))
            }
        }
        pokemonTableView.reloadData()
    }
}
