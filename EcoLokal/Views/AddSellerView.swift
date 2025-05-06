//
//  AddSellerView.swift
//  EcoLokal
//
//  Created by Łukasz Adamczak on 06/05/2025.
//

import SwiftUI

struct AddSellerView: View {
    @Environment(\.dismiss) var dismiss
    @ObservedObject var viewModel: SellerListViewModel
    
    @State private var name: String = " "
    @State private var category: String = " "
    @State private var city: String = " "
    @State private var description: String = " "
    
    var body: some View {
        NavigationStack {
            Form {
                Section(header: Text("Dane sprzedawcy")) {
                    TextField("Nazwa", text: $name)
                    TextField("KAtegoria", text: $category)
                    TextField("Miasto", text: $city)
                }
            }

            Section {
                Button("Dodaj") {
                    let newSeller = Seller(name: name, category: category, city: city, description: description)
                    viewModel.sellers.append(newSeller)
                    dismiss()
                }
                .disabled(name.isEmpty || category.isEmpty || city.isEmpty)
            }
        }
        .navigationTitle("Dodaj Sprzedawcę")
    }
}

#Preview {
    let previewViewModel = SellerListViewModel()
    return AddSellerView(viewModel: previewViewModel)
}
