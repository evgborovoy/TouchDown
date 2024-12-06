//
//  AddToCartDetailView.swift
//  TouchDown
//
//  Created by Evgeniy Borovoy on 12/6/24.
//

import SwiftUI

struct AddToCartDetailView: View {
    
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
        .background(Color(red: sampleProduct.red, green: sampleProduct.green, blue: sampleProduct.blue))
        .clipShape(.capsule)
    }
}

#Preview {
    AddToCartDetailView()
}
