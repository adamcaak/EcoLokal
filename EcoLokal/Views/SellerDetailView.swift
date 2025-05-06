//
//  SellerDetailView.swift
//  EcoLokal
//
//  Created by Łukasz Adamczak on 05/05/2025.
//

import SwiftUI

struct SellerDetailView: View {
    let seller: Seller
    var body: some View {
        VStack(alignment: .leading,spacing: 16) {
            Text(seller.name)
                .font(.largeTitle)
                .bold()
            Text("Kategoria: \(seller.category)")
                .font(.title3)
            Text("Miasto: \(seller.city)")
                .font(.title3)
            Divider()
            Text("Opis:")
                .font(.headline)
            Text(seller.description)
                .font(.body)
        }
        .padding()
        .navigationTitle("Szczegóły")
    }
}

#Preview {
    SellerDetailView(seller: Seller(name: "Test", category: "Test", city: "Test", description: "Test"))
}
