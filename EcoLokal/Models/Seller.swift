//
//  Seller.swift
//  EcoLokal
//
//  Created by Łukasz Adamczak on 05/05/2025.
//

import Foundation

struct Seller: Identifiable, Codable {
    let id = UUID()
    let name: String
    let category: String
    let city: String
}
