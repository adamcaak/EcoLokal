//
//  SellerListViewModel.swift
//  EcoLokal
//
//  Created by Łukasz Adamczak on 05/05/2025.
//

import Foundation

class SellerListViewModel: ObservableObject {
    @Published var sellers: [Seller] = [] {
        didSet {
            saveSellers()
        }
    }
    
    private let sellersKey = "saved_sellers"
    
    init() {
        loadSellers()
    }
    
    private func saveSellers() {
        if let encoded = try? JSONEncoder().encode(sellers) {
            UserDefaults.standard.set(encoded, forKey: sellersKey)
        }
    }
    
    private func loadSellers() {
        if let data = UserDefaults.standard.data(forKey: sellersKey),
           let decoded = try? JSONDecoder().decode([Seller].self, from: data) {
            sellers = decoded
        }
    }
}
