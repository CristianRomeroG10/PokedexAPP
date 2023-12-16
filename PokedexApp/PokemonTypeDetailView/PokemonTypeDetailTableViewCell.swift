//
//  PokemonTypeDetailTableViewCell.swift
//  PokedexApp
//
//  Created by Cristian guillermo Romero garcia on 11/11/23.
//

import UIKit

class PokemonTypeDetailTableViewCell: UITableViewCell {


   var pokemonTypeInfo = PokemonType(typeName: "", typeImage: "", doubleDamageDealt: [], doubleDamgeReceived: [], HalfDamgeDealt: [], HalfDamageReceived: [], notEffectedBy: [], noEffectAgainst: [])
    var typeaffected = TypeAffected()
    var numbwerSection: Int = 0
    @IBOutlet weak var PokemonTypeDetailCollectionView: UICollectionView!{
        didSet{
            PokemonTypeDetailCollectionView.register(UINib(nibName: "TypesAffectedCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "TypesAffectedCell")
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        PokemonTypeDetailCollectionView.dataSource = self
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
}

extension PokemonTypeDetailTableViewCell: UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        3
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "TypesAffectedCell", for: indexPath)as! TypesAffectedCollectionViewCell
        
        switch numbwerSection{
        case 0:
            switch indexPath.row{
            case 0: cell.image.image = UIImage(named: pokemonTypeInfo.doubleDamageDealt[0].typeOne ?? "questionmark.folder")
                cell.nameLabel.text = pokemonTypeInfo.doubleDamageDealt[0].typeOne ?? ""
            case 1: cell.image.image = UIImage(named: pokemonTypeInfo.doubleDamageDealt[0].typeTwo ?? "questionmark.folder")
                cell.nameLabel.text = pokemonTypeInfo.doubleDamageDealt[0].typeTwo ?? ""
            case 2: cell.image.image = UIImage(named: pokemonTypeInfo.doubleDamageDealt[0].typeThree ?? "questionmark.folder")
                cell.nameLabel.text = pokemonTypeInfo.doubleDamageDealt[0].typeThree ?? ""
            default: cell.image.image = UIImage(systemName: "questionmark.folde")
            }
            return cell
        case 1: 
            switch indexPath.row{
            case 0: cell.image.image = UIImage(named: pokemonTypeInfo.doubleDamgeReceived[0].typeOne ?? "questionmark.folder")
                cell.nameLabel.text = pokemonTypeInfo.doubleDamgeReceived[0].typeOne ?? ""
            case 1: cell.image.image = UIImage(named: pokemonTypeInfo.doubleDamgeReceived[0].typeTwo ?? "questionmark.folder")
                cell.nameLabel.text = pokemonTypeInfo.doubleDamgeReceived[0].typeTwo ?? ""
            case 2: cell.image.image = UIImage(named: pokemonTypeInfo.doubleDamgeReceived[0].typeThree ?? "questionmark.folder")
                cell.nameLabel.text = pokemonTypeInfo.doubleDamgeReceived[0].typeThree ?? ""
            default: cell.image.image = UIImage(systemName: "questionmark.folde")
            }
            return cell
        case 2:
            switch indexPath.row{
            case 0: cell.image.image = UIImage(named: pokemonTypeInfo.HalfDamgeDealt[0].typeOne ?? "questionmark.folder")
                cell.nameLabel.text = pokemonTypeInfo.HalfDamgeDealt[0].typeOne ?? ""
            case 1: cell.image.image = UIImage(named: pokemonTypeInfo.HalfDamgeDealt[0].typeTwo ?? "questionmark.folder")
                cell.nameLabel.text = pokemonTypeInfo.HalfDamgeDealt[0].typeTwo ?? ""
            case 2: cell.image.image = UIImage(named: pokemonTypeInfo.HalfDamgeDealt[0].typeThree ?? "questionmark.folder")
                cell.nameLabel.text = pokemonTypeInfo.HalfDamgeDealt[0].typeThree ?? ""
            default: cell.image.image = UIImage(systemName: "questionmark.folde")
            }
            return cell
        case 3:
            switch indexPath.row{
            case 0: cell.image.image = UIImage(named: pokemonTypeInfo.HalfDamageReceived[0].typeOne ?? "questionmark.folder")
                cell.nameLabel.text = pokemonTypeInfo.HalfDamageReceived[0].typeOne ?? ""
            case 1: cell.image.image = UIImage(named: pokemonTypeInfo.HalfDamageReceived[0].typeTwo ?? "questionmark.folder")
                cell.nameLabel.text = pokemonTypeInfo.HalfDamageReceived[0].typeTwo ?? ""
            case 2: cell.image.image = UIImage(named: pokemonTypeInfo.HalfDamageReceived[0].typeThree ?? "questionmark.folder")
                cell.nameLabel.text = pokemonTypeInfo.HalfDamageReceived[0].typeThree ?? ""
            default: cell.image.image = UIImage(systemName: "questionmark.folde")
            }
            return cell
        case 4:
            switch indexPath.row{
            case 0: cell.image.image = UIImage(named: pokemonTypeInfo.notEffectedBy[0].typeOne ?? "questionmark.folder")
                cell.nameLabel.text = pokemonTypeInfo.notEffectedBy[0].typeOne ?? ""
            case 1: cell.image.image = UIImage(named: pokemonTypeInfo.notEffectedBy[0].typeTwo ?? "questionmark.folder")
                cell.nameLabel.text = pokemonTypeInfo.notEffectedBy[0].typeTwo ?? ""
            case 2: cell.image.image = UIImage(named: pokemonTypeInfo.notEffectedBy[0].typeThree ?? "questionmark.folder")
                cell.nameLabel.text = pokemonTypeInfo.notEffectedBy[0].typeThree ?? ""
            default: cell.image.image = UIImage(systemName: "questionmark.folde")
            }
            return cell
        case 5:
            switch indexPath.row{
            case 0: cell.image.image = UIImage(named: pokemonTypeInfo.noEffectAgainst[0].typeOne ?? "questionmark.folder")
                cell.nameLabel.text = pokemonTypeInfo.noEffectAgainst[0].typeOne ?? ""
            case 1: cell.image.image = UIImage(named: pokemonTypeInfo.noEffectAgainst[0].typeTwo ?? "questionmark.folder")
                cell.nameLabel.text = pokemonTypeInfo.noEffectAgainst[0].typeTwo ?? ""
            case 2: cell.image.image = UIImage(named: pokemonTypeInfo.noEffectAgainst[0].typeThree ?? "questionmark.folder")
                cell.nameLabel.text = pokemonTypeInfo.noEffectAgainst[0].typeThree ?? ""
            default: cell.image.image = UIImage(systemName: "questionmark.folde")
            }
            return cell
        default:  switch indexPath.row{
        case 0: cell.image.image = UIImage( named: "questionmark.folder")
            cell.nameLabel.text = ""
        case 1: cell.image.image = UIImage(named: "questionmark.folder")
            cell.nameLabel.text = ""
        case 2: cell.image.image = UIImage(named: "questionmark.folder")
            cell.nameLabel.text = ""
        default: cell.image.image = UIImage(systemName: "questionmark.folde")
        }
        return cell
        }
    
    }
    

    
}

