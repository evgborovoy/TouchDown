//
//  Shop.swift
//  TouchDown
//
//  Created by Evgeniy Borovoy on 12/6/24.
//

import Foundation

class Shop: ObservableObject {
    @Published var showingProduct: Bool = false
    @Published var selectedProduct: Product? = nil
}
