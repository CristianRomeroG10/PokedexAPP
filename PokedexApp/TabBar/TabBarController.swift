//
//  TabBarController.swift
//  PokedexApp
//
//  Created by Cristian guillermo Romero garcia on 10/11/23.
//

import UIKit

class TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setUpViewControllers()
    }
    
    func setUpViewControllers(){
        //PokemonView
        let pokemonStoryboard = UIStoryboard(name: "PokemonStoryboard", bundle: .main)
        let pokemonViewController = pokemonStoryboard.instantiateViewController(withIdentifier: "PokemonVC")
        let pokemonNavigation = UINavigationController(rootViewController: pokemonViewController)
        pokemonNavigation.tabBarItem.title = "Pokemon"
        pokemonNavigation.tabBarItem.image = UIImage(systemName: "list.bullet.clipboard")
        pokemonNavigation.tabBarItem.selectedImage = UIImage(systemName: "list.bullet.clipboard.fill")
        
        //TypeView
        let typeStoryboard = UIStoryboard(name: "TypeStoryboard", bundle: .main)
        let typeViewController = typeStoryboard.instantiateViewController(withIdentifier: "TypeVC")
        let typeNavigation = UINavigationController(rootViewController: typeViewController)
        typeNavigation.tabBarItem.title = "Tipo"
        typeNavigation.tabBarItem.image = UIImage(systemName: "square.grid.3x3")
        typeNavigation.tabBarItem.selectedImage = UIImage(systemName: "square.grid.3x3.fill")
        //FavoriteView
        let favoriteStoryboard = UIStoryboard(name: "FavoriteStoryboard", bundle: .main)
        let favoriteViewController = favoriteStoryboard.instantiateViewController(withIdentifier: "FavoriteVC")
        let favoriteNavigation = UINavigationController(rootViewController: favoriteViewController)
        favoriteNavigation.tabBarItem.title = "Favoritos"
        favoriteNavigation.tabBarItem.image = UIImage(systemName: "heart")
        favoriteNavigation.tabBarItem.selectedImage = UIImage(systemName: "heart.fill")
        
        let viewController = [pokemonNavigation, typeNavigation, favoriteNavigation]
        self.viewControllers = viewController
        self.selectedIndex = 0
        self.tabBar.backgroundColor = .white
        
    }
}
