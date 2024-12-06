//
//  AddToCartDetailView.swift
//  TouchDown
//
//  Created by Evgeniy Borovoy on 12/6/24.
//

import SwiftUI

struct AddToCartDetailView: View {
    // MARK: - Properties
    @EnvironmentObject var shop: Shop
    
    // MARK: - Body
    var body: some View {
        Button(action: {}) {
            Spacer()
            
            Text("Add to cart".uppercased())
                .font(.system(.title2, design: .rounded))
                .fontWeight(.bold)
                .foregroundStyle(.white)
            
            Spacer()
        }
        .padding()
        .background(Color(red:shop.selectedProduct?.red ?? sampleProduct.red, green:shop.selectedProduct?.green ?? sampleProduct.green, blue:shop.selectedProduct?.blue ?? sampleProduct.blue))
        .clipShape(.capsule)
    }
}

#Preview {
    AddToCartDetailView()
        .environmentObject(Shop())
}
