//
//  ContentView.swift
//  M4L4-Wrap-Up-Challenge
//
//  Created by Marc Moxey on 3/11/23.
//

import SwiftUI

struct LibraryScrollView: View {
    
    @EnvironmentObject var model:BookModel


    var body: some View {
        
        NavigationView {
            VStack(alignment: .leading, spacing: 0) {
                // Title
                Text("My Library")
                    .bold()
                    .padding(.leading)
                    .padding(.top, 40)
                    .font(.largeTitle)
                
                // Create Display Frame
                GeometryReader { geo in
                    
                    // Display All Books
                    ScrollView {
                        
                        // Loop throught all books
                        ForEach(model.books) { b in
                            
                            // Book Card
                            ZStack {
                                Rectangle()
                                    .foregroundColor(.white)
                                    
                                
                                VStack(alignment: .leading, spacing: 0) {
                                    
                                    Text(b.title)
                                        .bold()
                                        .font(.title)
                                        .padding(.bottom,5)
                                     
                                    Text(b.author)
                                        .italic()
                                        .padding(.bottom,5)
                                        
                                    
                                    
                                    NavigationLink(destination: LibraryDetailView(book: b ), label: {
                                        Image("cover1" )
                                            .resizable()
                                            .aspectRatio(contentMode: .fill)
                                            .frame(width: geo.size.width - 50, height: geo.size.height - 120 ,  alignment: .center)
                                            .clipped()
                                    })
                                  
                                }
                            }
                            .frame(width: .none, height: geo.size.height,  alignment: .center)
                            .cornerRadius(15)
                            .shadow(color: Color(.sRGB, red: 0, green: 0, blue: 0, opacity: 0.5), radius: 10, x: -5, y: 5)
                            .padding([.leading, .trailing])
                       
                        }
                    }
                }
            }
            .navigationBarHidden(true)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        LibraryScrollView()
            .environmentObject(BookModel())
    }
}
