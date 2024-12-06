//
//  ProductGridView.swift
//  TouchDown
//
//  Created by Evgeniy Borovoy on 12/4/24.
//

import SwiftUI

struct ProductGridView: View {
    @EnvironmentObject var shop: Shop
    // MARK: - body
    var body: some View {
        LazyVGrid(columns: gridLayout, spacing: 14) {
            ForEach(products) {product in
                ProductItemView(product: product)
                    .onTapGesture {
                        withAnimation {
                            shop.selectedProduct = product
                            shop.showingProduct = true
                        }
                    }
            }
        }
        .padding()
    }
}

#Preview {
    ProductGridView()
        .environmentObject(Shop())
}
