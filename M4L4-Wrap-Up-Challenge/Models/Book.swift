//
//  Book.swift
//  M4L4-Wrap-Up-Challenge
//
//  Created by Marc Moxey on 3/11/23.
//

import Foundation

struct Book: Identifiable, Decodable {
    
    var title:String
    var author:String
    var isFavourite:Bool
    var currentPage:Int
    var rating:Int
    var id:Int
    var content:[String]
    
}


