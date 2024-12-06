//
//  TopBlockDetailView.swift
//  TouchDown
//
//  Created by Evgeniy Borovoy on 12/5/24.
//

import SwiftUI

struct TopBlockDetailView: View {
    // MARK: - Properties
    @State private var isAnimating: Bool = false
    @EnvironmentObject var shop: Shop
    
    // MARK: - Body
    var body: some View {
        HStack(alignment: .center, spacing: 6) {
            VStack(alignment: .leading, spacing: 6) {
                Text("Price")
                    .fontWeight(.semibold)
                
                Text(shop.selectedProduct?.formattedPrice ??  sampleProduct.formattedPrice)
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .scaleEffect(1.4, anchor: .leading)
            }
            .offset(y: isAnimating ? -50 : -75)
            
            Spacer()
            
            Image(shop.selectedProduct?.image ?? sampleProduct.image)
                .resizable()
                .scaledToFit()
                .offset(y: isAnimating ? 0 : -35)
        }
        .onAppear {
            withAnimation(.easeOut(duration: 0.5)) {
                isAnimating = true
            }
        }
    }
}

#Preview {
    TopBlockDetailView()
        .environmentObject(Shop())
}
