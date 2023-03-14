//
//  Poster.swift
//  Flixster
//
//  Created by Khadar Jama Tukale on 3/13/23.
//

import Foundation

struct PosterSearchResponse: Decodable {
    let results : [Poster]
}
struct Poster: Decodable {
    let backdrop_path: URL
    let original_title: String
    let overview: String
    let popularity: Float
    let poster_path: URL
    let vote_average: Float
    let vote_count: Int
}

