//
//  PosterDetailViewController.swift
//  Flixster
//
//  Created by Khadar Jama Tukale on 3/13/23.
//

import UIKit
import Nuke

class PosterDetailViewController: UIViewController {
    
    @IBOutlet weak var posterImageView: UIImageView!
    
    @IBOutlet weak var posterTitleLabel: UILabel!
    
    @IBOutlet weak var posterVoteCount: UILabel!
    
    @IBOutlet weak var posterVoteAverage: UILabel!
    
    @IBOutlet weak var posterPopularity: UILabel!
    
    @IBOutlet weak var posterOverview: UILabel!
    
    var poster: Poster!

    override func viewDidLoad() {
        super.viewDidLoad()

        Nuke.loadImage(with: URL(string: "https://image.tmdb.org/t/p/w600_and_h900_bestv2/" + poster.backdrop_path.absoluteString)!, into: posterImageView)
        posterTitleLabel.text = poster.original_title
        posterOverview.text = poster.overview
        posterPopularity.text = String(poster.popularity)
        posterVoteAverage.text = String(poster.vote_average)
        posterVoteCount.text = String(poster.vote_count)
        // Use helper method to convert milliseconds into `mm:ss` string format
        //durationLabel.text = formattedTrackDuration(with: track.trackTimeMillis)

    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
