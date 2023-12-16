//
//  TypeViewController.swift
//  PokedexApp
//
//  Created by Cristian guillermo Romero garcia on 10/11/23.
//

import UIKit

class TypeViewController: UIViewController {
    
    let typeModel = PokemonTypeModel()


    //MARK: Outlets
    @IBOutlet weak var pokemonTypeCollectionView: UICollectionView!{
        didSet{
            pokemonTypeCollectionView.register(UINib(nibName: "TypeCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "TypeCell")
        }
    }
    
    let size = UIScreen.main.bounds.width/4
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Type"
        pokemonTypeCollectionView.dataSource = self
        pokemonTypeCollectionView.delegate = self
        pokemonTypeCollectionView.setCollectionViewLayout(generateLayOut(), animated: true)
        
    }
    
    func generateLayOut() ->  UICollectionViewLayout{
            let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0),
                                                 heightDimension: .fractionalHeight(1.0))
            let item = NSCollectionLayoutItem(layoutSize: itemSize)
            let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0),
                                                  heightDimension: .absolute(200))
            let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitem: item, count: 2)
            let spacing = CGFloat(10)
            group.interItemSpacing = .fixed(spacing)
            let section = NSCollectionLayoutSection(group: group)
            section.interGroupSpacing = spacing
            section.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 10)
            let layout = UICollectionViewCompositionalLayout(section: section)
            return layout
    }

}
extension TypeViewController: UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        typeModel.typeArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "TypeCell", for: indexPath)as! TypeCollectionViewCell
        cell.typeNameLabel.text = typeModel.typeArray[indexPath.row].typeName
        cell.typeImage.image = UIImage(named: typeModel.typeArray[indexPath.row].typeImage)
        return cell
    }
}

extension TypeViewController: UICollectionViewDelegate{
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let pokemonTypeViewController = PokemonTypeViewController(nibName: "PokemonTypeViewController", bundle: nil)
        pokemonTypeViewController.pokemonType = typeModel.typeArray[indexPath.row]
        
        self.navigationController?.pushViewController(pokemonTypeViewController, animated: true)
    }
}


