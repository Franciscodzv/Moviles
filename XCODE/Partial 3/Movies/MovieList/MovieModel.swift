//
//  MovieModel.swift
//  MovieList
//
//  Created by Francisco Diaz on 6/5/21.
//

import Foundation



struct MovieList:Decodable {
    var results: [Movie]
}


struct Movie: Decodable {
    
    var id: Int
    var poster_path: String
    var title: String
    var vote_average: Float
    
}
