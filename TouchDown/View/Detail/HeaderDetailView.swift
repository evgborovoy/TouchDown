//
//  HeaderDetailView.swift
//  TouchDown
//
//  Created by Evgeniy Borovoy on 12/5/24.
//

import SwiftUI

struct HeaderDetailView: View {
    @EnvironmentObject var shop: Shop
    var body: some View {
        VStack(alignment: .leading, spacing: 6) {
            Text("Protective Gear")
            
            Text(shop.selectedProduct?.name ?? sampleProduct.name)
                .font(.largeTitle)
                .fontWeight(.black)
        }
        .foregroundStyle(.white)
    }
}

#Preview {
    HeaderDetailView()
        .environmentObject(Shop())
}
