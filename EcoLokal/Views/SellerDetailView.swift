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
            Text("Miasto: \(seller.city)")
            Spacer()
        }
        .padding()
        .navigationTitle("Szczegóły")
    }
}

#Preview {
    SellerDetailView(seller: Seller(name: "Test", category: "Test", city: "Test"))
}
