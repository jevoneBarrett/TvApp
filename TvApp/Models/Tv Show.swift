//
//  Tv Show.swift
//  TvApp
//
//  Created by Jevone Barrett on 8/8/21.
//

import Foundation

struct TVShow: Decodable, Identifiable {
    var id: Int
    var url: URL
    var name: String
    var type: String
    var language: String
    var genres: [String]
    var status: String
    var officialSite: URL?
    var schedule: Schedule
    var rating: Rating
    var image: TvShowImage
    var summary: String
    
    
    
    
}
