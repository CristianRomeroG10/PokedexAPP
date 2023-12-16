//
//  PokemonTypeViewController.swift
//  PokedexApp
//
//  Created by Cristian guillermo Romero garcia on 11/11/23.
//

import UIKit

class PokemonTypeViewController: UIViewController {
    
    let typeModel = PokemonTypeModel()
    var pokemonType: PokemonType = PokemonType(typeName: "", typeImage: "", doubleDamageDealt: [], doubleDamgeReceived: [], HalfDamgeDealt: [], HalfDamageReceived: [], notEffectedBy: [], noEffectAgainst: [])
    
    
    //MARK: Outlets
    
    @IBOutlet weak var typeImage: UIImageView!
    @IBOutlet weak var TableView: UITableView!{
        didSet{
            TableView.register(UINib(nibName: "PokemonTypeDetailTableViewCell", bundle: nil), forCellReuseIdentifier: "PokemonTypeDetailCell")
        }
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        TableView.dataSource = self
        TableView.delegate = self
        typeImage.image = UIImage(named: pokemonType.typeImage)
        self.title = pokemonType.typeName
        

    }


    

}
extension PokemonTypeViewController: UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        6
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//       PokemonTypeModel().typeArray.count
        1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
         let cell = tableView.dequeueReusableCell(withIdentifier: "PokemonTypeDetailCell")as! PokemonTypeDetailTableViewCell
        cell.numbwerSection = indexPath.section
        cell.pokemonTypeInfo = pokemonType
        cell.typeaffected = typeModel.typeArray[indexPath.row].HalfDamageReceived[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section{
        case 0: return "Doble daño inflingido"
        case 1: return "Doble daño recibido"
        case 2: return "medio daño inflingido"
        case 3: return "medio daño recibido"
        case 4: return "Sin efecto con"
        case 5: return "Doble daño dado"
        default: return "Sin efecto en contra"
        }
    }
    
    
}

extension PokemonTypeViewController: UITableViewDelegate{
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        150
    }
}
