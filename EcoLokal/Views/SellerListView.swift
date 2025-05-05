//
//  SellerListView.swift
//  EcoLokal
//
//  Created by Łukasz Adamczak on 05/05/2025.
//

import SwiftUI

struct SellerListView: View {
    @StateObject private var viewModel = SellerListViewModel()
    
    var body: some View {
        NavigationStack {
            List(viewModel.sellers) { sellers in
                NavigationLink(destination: SellerDetailView(seller: sellers)) {
                    VStack(alignment: .leading) {
                        Text(sellers.name)
                            .font(.headline)
                        Text("\(sellers.category) - \(sellers.city)")
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                    }
                    .padding(.vertical, 4)
                }
            }
            .navigationTitle("Eko Sprzedawcy")
            .toolbar {
                NavigationLink(destination: AddSellerView(viewModel: viewModel)) {
                    Image(systemName: "plus")
                }
            }
        }
    }
}

#Preview {
    SellerListView()
}
