//
//  ProductGridView.swift
//  TouchDown
//
//  Created by Evgeniy Borovoy on 12/4/24.
//

import SwiftUI

struct ProductGridView: View {
    // MARK: - body
    var body: some View {
        LazyVGrid(columns: gridLayout, spacing: 14) {
            ForEach(products) {product in
                ProductItemView(product: product)
            }
        }
        .padding()
    }
}

#Preview {
    ProductGridView()
}
