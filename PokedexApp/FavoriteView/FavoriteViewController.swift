//
//  FavoriteViewController.swift
//  PokedexApp
//
//  Created by Cristian guillermo Romero garcia on 10/11/23.
//

import UIKit

class FavoriteViewController: UIViewController {
    
    @IBOutlet weak var favoritesTableView: UITableView! {
        didSet {
            favoritesTableView.register(UINib(nibName: "FavoriteTableViewCell", bundle: nil), forCellReuseIdentifier: "cell")
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Favorite"
        cargarDatos()
        favoritesTableView.dataSource = self
        favoritesTableView.delegate = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        favoritesTableView.reloadData()
        cargarDatos()
    }
}

extension FavoriteViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        favorites.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = favoritesTableView.dequeueReusableCell(withIdentifier: "cell") as? FavoriteTableViewCell
        cell?.favoriteImage.image = UIImage(named: favorites[indexPath.row].pokeImage)
        cell?.favoriteNameLabel.text = favorites[indexPath.row].name
        cell?.favoriteNumberLabel.text = favorites[indexPath.row].pokedexNumber
        return cell!
    }
    
    func tableView(_ tableView: UITableView, titleForDeleteConfirmationButtonForRowAt indexPath: IndexPath) -> String? {
        "Remove"
    }
    
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        true
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            favorites.remove(at: indexPath.row)
            tableView.reloadData()
            guardarDatos()
        }
    }
}

extension FavoriteViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        favoritesTableView.deselectRow(at: indexPath, animated: true)
        let pokemonDetailViewContoller = PokemonDetailViewController(nibName: "PokemonDetailViewController", bundle: nil)
        pokemonDetailViewContoller.pokemon = favorites[indexPath.row]
        navigationController?.pushViewController(pokemonDetailViewContoller, animated: true)
    }
}
