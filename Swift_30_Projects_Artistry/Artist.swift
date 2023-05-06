//
//  Artist.swift
//  Swift_30_Projects_Artistry
//
//  Created by yc on 2023/05/06.
//

import Foundation

struct Artist: Decodable, Hashable {
    static func == (lhs: Artist, rhs: Artist) -> Bool {
        return lhs.name == rhs.name
    }
    
    let name: String
    let bio: String
    let image: String
    var works: [Work]
    
    struct Work: Decodable, Hashable {
        let title: String
        let image: String
        let info: String
    }
    
    static var list: [Artist] {
        guard let url = Bundle.main.url(forResource: "artists", withExtension: "json") else {
            return []
        }
        
        do {
            let data = try Data(contentsOf: url)
            
            let artists = try JSONDecoder().decode([Artist].self, from: data)
            
            return artists
        } catch {
            print("\(error.localizedDescription)")
            return []
        }
    }
}
