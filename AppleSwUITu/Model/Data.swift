//
//  Data.swift
//  AppleSwUITu
//
//  Created by Tsering Lama on 2/8/21.
//

import Foundation
import Combine

class championData: ObservableObject {
    // an observable object needs to publish an changes to its data so that its subscribers can pick up the change
    
    @Published var champions: [Champions] = load("champ.json")
}

func load<T: Decodable>(_ fileName: String) -> T {
    let data: Data
    
    guard let file = Bundle.main.url(forResource: fileName, withExtension: nil) else {
        fatalError("\(fileName) was not found")
    }
    
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("\(fileName) could not be loaded")
    }
    
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError()
    }
}
