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
                    TextField("Kategoria", text: $category)
                    TextField("Miasto", text: $city)
                    TextField("Opis", text: $description, axis: .vertical)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .lineLimit(3...6)
                }
            }

            Section {
                Button("Dodaj") {
                    let newSeller = Seller(name: name, category: category, city: city, description: description)
                    viewModel.sellers.append(newSeller)
                    
                    //Reset pól formularza
                    name = ""
                    category = ""
                    city = ""
                    description = ""
                    
                    //Zamknięcie formularza
                    dismiss()
                }
                .disabled(name.isEmpty || category.isEmpty || city.isEmpty || description.isEmpty)
            }
        }
        .navigationTitle("Dodaj Sprzedawcę")
    }
}

#Preview {
    let previewViewModel = SellerListViewModel()
    return AddSellerView(viewModel: previewViewModel)
}
