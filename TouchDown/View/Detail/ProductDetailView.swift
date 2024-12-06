//
//  ProductDetailView.swift
//  TouchDown
//
//  Created by Evgeniy Borovoy on 12/5/24.
//

import SwiftUI

struct ProductDetailView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            NavigationBarDetailView()
                .padding(.horizontal)
                .padding(.top, UIApplication
                                    .shared
                                    .connectedScenes
                                    .flatMap { ($0 as? UIWindowScene)?.windows ?? [] }
                                    .first { $0.isKeyWindow }?.safeAreaInsets.top)
            
            HeaderDetailView()
                .padding(.horizontal)
            
            TopBlockDetailView()
                .padding(.horizontal)
                .zIndex(1)
            
            VStack(alignment: .center, spacing: 0) {
                RatingSizesDetailView()
                    .padding(.top, -20)
                    .padding(.bottom, 10)
                
                ScrollView(.vertical, showsIndicators: false) {
                    Text(sampleProduct.description)
                        .font(.system(.body, design: .rounded))
                        .foregroundStyle(.gray)
                        .multilineTextAlignment(.leading)
                }
                
                QuantityFavouriteDetailView()
                    .padding(.vertical, 10)
                
                AddToCartDetailView()
                    .padding(.bottom, 20)
            }
            .padding(.horizontal)
            .background(
                Color.white
                    .clipShape(CustomShape())
                    .padding(EdgeInsets(top: -105, leading: 0, bottom: 0, trailing: -7))
            )
        }
        .zIndex(0)
        .ignoresSafeArea()
        .background {
            Color(
                red: sampleProduct.red,
                green: sampleProduct.green,
                blue: sampleProduct.blue
            ).ignoresSafeArea()
            
        }
    }
    
}

#Preview {
    ProductDetailView()
}
