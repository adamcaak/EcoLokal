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
        NavigationView {
            List {
                ForEach(viewModel.sellers.indices, id: \.self) { index in
                    NavigationLink(destination: SellerDetailView(seller: $viewModel.sellers[index])) {
                        let seller = viewModel.sellers[index]
                        VStack(alignment: .leading) {
                            Text(seller.name)
                                .font(.headline)
                            Text("\(seller.category) • \(seller.city)")
                                .font(.subheadline)
                                .foregroundColor(.gray)
                        }
                        .padding(.vertical, 4)
                    }
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
