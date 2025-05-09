//
//  SellerDetailView.swift
//  EcoLokal
//
//  Created by Łukasz Adamczak on 05/05/2025.
//

import SwiftUI

struct SellerDetailView: View {
    @Binding var seller: Seller
    
    var body: some View {
        VStack(alignment: .leading,spacing: 16) {
            Text(seller.name)
                .font(.largeTitle)
                .bold()
            Text("Kategoria: \(seller.category)")
                .font(.title3)
            Text("Miasto: \(seller.city)")
                .font(.title3)
            Text("Numer telefonu: \(seller.phoneNumber)")
                .font(.title3)
            Divider()
            Text("Opis:")
                .font(.headline)
            Text(seller.description)
                .font(.body)
            
            HStack {
                Text("Ocena:")
                ForEach(1...5, id: \.self) { index in
                    Image(systemName: index <= seller.rating ? "star.fill" : "star")
                        .foregroundColor(.yellow)
                        .onTapGesture {
                            seller.rating = index
                        }
                }
            }
            .padding(.top)
        }
        .padding()
        .navigationTitle("Szczegóły")
    }
}

#Preview {
    SellerDetailView(seller: .constant(Seller(name: "Test", category: "Test", city: "Test", description: "Test", phoneNumber: "Test", rating: 3)))
}
