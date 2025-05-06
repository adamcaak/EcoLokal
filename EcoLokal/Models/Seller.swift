//
//  Seller.swift
//  EcoLokal
//
//  Created by Łukasz Adamczak on 05/05/2025.
//

import Foundation

struct Seller: Identifiable, Codable {
    var id = UUID()
    var name: String
    var category: String
    var city: String
    var description: String
}
