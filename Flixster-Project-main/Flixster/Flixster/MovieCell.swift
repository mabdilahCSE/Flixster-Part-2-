//
//  MovieCell.swift
//  Flixster
//
//  Created by Khadar Jama Tukale on 3/4/23.
//

import UIKit
import Nuke

class MovieCell: UITableViewCell {

    @IBOutlet weak var poster_pathView: UIImageView!
    
    @IBOutlet weak var original_titleLabel: UILabel!
    
    @IBOutlet weak var overviewLabel: UILabel!
    
    /// Configures the cell's UI for the given track.
    func configure(with movie: Movie) {
        original_titleLabel.text = movie.original_title
        overviewLabel.text = movie.overview

        // Load image async via Nuke library image loading helper method
        Nuke.loadImage(with: URL(string: "https://image.tmdb.org/t/p/w600_and_h900_bestv2/" + movie.poster_path.absoluteString)!, into: poster_pathView)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
