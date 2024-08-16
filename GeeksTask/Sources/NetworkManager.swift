//
//  NetworkManager.swift
//  GeeksTask
//
//  Created by Bema on 16/8/24.
//

import Foundation

class NetworkManager {
    static let shared = NetworkManager()
    
    func fetchCharacters(completion: @escaping ([Character]) -> Void) {
        let url = URL(string: "https://rickandmortyapi.com/api/character")!
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            if let data = data {
                do {
                    let response = try JSONDecoder().decode(CharacterResponse.self, from: data)
                    completion(response.results)
                } catch {
                    print("Error decoding: \(error)")
                }
            }
        }.resume()
    }
}

struct CharacterResponse: Decodable {
    let results: [Character]
}
