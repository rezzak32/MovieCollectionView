//
//  Movies.swift
//  Movies Collection View
//
//  Created by Rezzak on 9.07.2023.
//

import Foundation

class Movies {
    var movieId:Int?
    var movieName:String?
    var movieImageName:String?
    var moviePrice:Double?
    
    init() {
        
    }
    
    init(movieId:Int,movieName:String,movieImageName:String,moviePrice:Double) {
        self.movieId = movieId
        self.movieName = movieName
        self.movieImageName = movieImageName
        self.moviePrice = moviePrice
    }
}
