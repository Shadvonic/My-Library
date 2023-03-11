//
//  LibraryDetailView.swift
//  M4L4-Wrap-Up-Challenge
//
//  Created by Marc Moxey on 3/11/23.
//

import SwiftUI

struct LibraryDetailView: View {
    
    var book:Book
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct LibraryDetailView_Previews: PreviewProvider {
    static var previews: some View {
        
        let model = BookModel()
        LibraryDetailView(book: model.books[0])
    }
}
