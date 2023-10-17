//
//  MenuItem.swift
//  LittleLemonApp
//
//  Created by Danielle Dhainy on 10/17/23.
//


import Foundation

struct MenuItem: Codable, Identifiable {
    var id = UUID()
    let category: String
    let title : String
    let price: String
    let image: String
    let descriptionDish: String
    
    enum CodingKeys: String, CodingKey {
        case category = "category"
        case title = "title"
        case price = "price"
        case image = "image"
        case descriptionDish = "description"
    }
}
