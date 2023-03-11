//
//  BookModel.swift
//  M4L4-Wrap-Up-Challenge
//
//  Created by Marc Moxey on 3/11/23.
//

import Foundation

class BookModel: ObservableObject {
    @Published  var books = [Book]()
    
    //parse json
    init() {
        self.books = DataService().getLocalJson()
    }
    
    
}
