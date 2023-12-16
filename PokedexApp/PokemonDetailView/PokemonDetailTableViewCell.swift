//
//  PokemonDetailTableViewCell.swift
//  PokedexApp
//
//  Created by Cristian guillermo Romero garcia on 14/11/23.
//

import UIKit

class PokemonDetailTableViewCell: UITableViewCell {

    //MARK: Outlets
    @IBOutlet weak var pokemonImage: UIImageView!
    @IBOutlet weak var pokemonNameLabel: UILabel!
    @IBOutlet weak var pokemonNumberLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
}
