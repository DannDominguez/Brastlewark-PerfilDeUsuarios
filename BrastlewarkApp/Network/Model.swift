//
//  Model.swift
//  BrastlewarkApp
//
//  Created by Daniela Ciciliano on 17/05/24.
//

import Foundation

// MARK: - Model
struct BrastlewarkDataModel: Codable {
    let brastlewark: [Habitant]
    
    enum CodingKeys: String, CodingKey {
        case brastlewark = "Brastlewark"
    }
}

// MARK: - Brastlewark
struct Habitant: Codable, Hashable {
    let id: Int
    let name: String
    let thumbnail: String
    let age: Int
    let weight, height: Double
    let hairColor: String
    let professions: [String]
    let friends: [String]
    
    enum CodingKeys: String, CodingKey {
        case id, name, thumbnail, age, weight, height
        case hairColor = "hair_color"
        case professions, friends
    }
}
