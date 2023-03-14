//
//  Movie.swift
//  lab-tunley
//
//  Created by Charlie Hieger on 12/2/22.
//

import Foundation

struct Movie: Decodable {
    let backdrop_path: URL
    let original_title: String
    let overview: String
    let popularity: Float
    let poster_path: URL
    let vote_average: Float
    let vote_count: Int
}
struct MovieResponse: Decodable {
    let results : [Movie]
}
/*extension Movie {

    static var mockMovie: [Movie]  = [
        Movie(backdrop_path: URL(string:"https://image.tmdb.org/t/p/w188_and_h282_bestv2//xDMIl84Qo5Tsu62c9DGWhmPI67A.jpg")!,
        original_title: "Black Panther: Wakanda Forever",
        overview: "Queen Ramonda, Shuri, M’Baku, Okoye and the Dora Milaje fight to protect their nation from intervening world powers in the wake of King T’Challa’s death. As the Wakandans strive to embrace their next chapter, the heroes must band together with the help of War Dog Nakia and Everett Ross and forge a new path for the kingdom of Wakanda.",
        popularity: "2680.34",
        poster_path: URL(string:"https://image.tmdb.org/t/p/w188_and_h282_bestv2/sv1xJUazXeYqALzczSZ3O6nkH75.jpg")!,
        vote_average: "7.4",
        vote_count: "3734"),
        
        
        Movie(backdrop_path: URL(string:"https://image.tmdb.org/t/p/w188_and_h282_bestv2/b1Y8SUb12gPHCSSSNlbX4nB3IKy.jpg")!,
            original_title: "Puss in Boots: The Last Wish",
            overview: "Puss in Boots discovers that his passion for adventure has taken its toll: He has burned through eight of his nine lives, leaving him with only one life left. Puss sets out on an epic journey to find the mythical Last Wish and restore his nine lives.",
            popularity: "2398.547",
            poster_path: URL(string:"https://www.themoviedb.org/t/p/w188_and_h282_bestv2/kuf6dutpsT0vSVehic3EZIqkOBt.jpg")!,
            vote_average: "8.4",
            vote_count: "4202"),
        
        Movie(backdrop_path: URL(string:"https://image.tmdb.org/t/p/w188_and_h282_bestv2/9Rq14Eyrf7Tu1xk0Pl7VcNbNh1n.jpg")!,
            original_title: "Plane",
            overview:"After a heroic job of successfully landing his storm-damaged aircraft in a war zone, a fearless pilot finds himself between the agendas of multiple militias planning to take the plane and its passengers hostage.",
            popularity:  "1984.217" ,
            poster_path: URL(string:"https://www.themoviedb.org/t/p/w188_and_h282_bestv2/qi9r5xBgcc9KTxlOLjssEbDgO0J.jpg")!,
            vote_average: "6.9",
            vote_count: "731"),
        
        
        Movie(backdrop_path: URL(string:"https://image.tmdb.org/t/p/w188_and_h282_bestv2/22z44LPkMyf5nyyXvv8qQLsbom.jpg")!,
            original_title: "Knock at the Cabin",
            overview: "While vacationing at a remote cabin, a young girl and her two fathers are taken hostage by four armed strangers who demand that the family make an unthinkable choice to avert the apocalypse. With limited access to the outside world, the family must decide what they believe before all is lost.",
            popularity: "3886.366",
            poster_path: URL(string:"https://www.themoviedb.org/t/p/w188_and_h282_bestv2/dm06L9pxDOL9jNSK4Cb6y139rrG.jpg")!,
            vote_average: "6.5",
            vote_count: "709"),
        
        Movie(backdrop_path: URL(string:"https://image.tmdb.org/t/p/w188_and_h282_bestv2/3JSoB7eMbCd8sE8alxNiUtrNiTz.jpg")!,
            original_title: "Ant-Man and the Wasp: Quantumania",
              overview: "Super-Hero partners Scott Lang and Hope van Dyne, along with with Hope's parents Janet van Dyne and Hank Pym, and Scott's daughter Cassie Lang, find themselves exploring the Quantum Realm, interacting with strange new creatures and embarking on an adventure that will push them beyond the limits of what they thought possible.",
              popularity:  "960.262",
              poster_path: URL(string:"https://image.tmdb.org/t/p/w188_and_h282_bestv2/ngl2FKBlU4fhbdsrtdom9LVLBXw.jpg")!,
              vote_average: "6.5",
              vote_count: "836"),
        
        Movie(backdrop_path: URL(string:"https://image.tmdb.org/t/p/w188_and_h282_bestv2/26YLjaC1udGEmSvlM1P5eBGWO5h.jpg")!,
            original_title: "Creed III",
              overview: "After dominating the boxing world, Adonis Creed has been thriving in both his career and family life. When a childhood friend and former boxing prodigy, Damien Anderson, resurfaces after serving a long sentence in prison, he is eager to prove that he deserves his shot in the ring. The face-off between former friends is more than just a fight. To settle the score, Adonis must put his future on the line to battle Damien - a fighter who has nothing to lose.",
              popularity: "853.247",
              poster_path: URL(string:"https://image.tmdb.org/t/p/w188_and_h282_bestv2/cvsXj3I9Q2iyyIo95AecSd1tad7.jpg")!,
              vote_average: "7.3",
              vote_count: "68")
    ]

   
}
 */

// MARK: Helper Methods
/// Converts milliseconds to mm:ss format
///  ex:  208643 -> "3:28"
///  ex:
func formattedTrackDuration(with milliseconds: Int) -> String {
    let (minutes, seconds) = milliseconds.quotientAndRemainder(dividingBy: 60 * 1000)
    let truncatedSeconds = seconds / 1000
    if truncatedSeconds >= 10 {
        return "\(minutes):\(truncatedSeconds)"
    } else {
        return "\(minutes):0\(truncatedSeconds)"
    }
}
