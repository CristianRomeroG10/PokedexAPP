//
//  PokemonTableViewCell.swift
//  PokedexApp
//
//  Created by Cristian guillermo Romero garcia on 10/11/23.
//

import UIKit

class PokemonTableViewCell: UITableViewCell {
    
    //MARK: Outlets
    @IBOutlet weak var pokemonImage: UIImageView!
    @IBOutlet weak var pokemonNameLabel: UILabel!
    @IBOutlet weak var descriptionPokemonLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
}
