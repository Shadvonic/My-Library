//
//  DataService.swift
//  M4L4-Wrap-Up-Challenge
//
//  Created by Marc Moxey on 3/11/23.
//

import Foundation

class DataService: ObservableObject {
    
    func getLocalJson() -> [Book] {
        
        // Get path in app bundle
        let pathString = Bundle.main.path(forResource: "Data", ofType: "json")
        
        if let pathString = pathString {
            
            // Create URL object
            let url = URL(fileURLWithPath: pathString)
            
            do {
                // Create Data object
                let data = try Data(contentsOf: url)
                
                // Decode the json data
                let decoder = JSONDecoder()
                var books = try decoder.decode([Book].self, from: data)
                
                // Add ID to book instances
                for index in 0..<books.count - 1 {
                    books[index].id = index
                }
                
                return books
            }
            catch {
                print("error")
            }
        }
        
        return [Book]()
    }
}
