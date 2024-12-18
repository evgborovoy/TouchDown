//
//  ContentView.swift
//  TouchDown
//
//  Created by Evgeniy Borovoy on 12/3/24.
//

import SwiftUI

struct ContentView: View {
    // MARK: - Properties
    @EnvironmentObject var shop: Shop
    // MARK: - Body
    var body: some View {
        VStack {
            if !shop.showingProduct && shop.selectedProduct == nil {
                VStack(spacing: 0) {
                    NavigationBarView()
                        .padding()
                        .background(.white)
                        .shadow(color: .black.opacity(0.1), radius: 10, x: 0, y: 10)
                    
                    ScrollView(.vertical) {
                        FeaturedTabView()
                        
                        CategoryGridView()
                        
                        TitleView(title: "Helmets")
                        
                        ProductGridView()
                        
                        TitleView(title: "Brands")
                        
                        BrandGridView()
                        
                        FooterView()
                            .padding(.horizontal)
                    }
                }
                .background {
                    Color.colorBackground.ignoresSafeArea()
                }
            } else {
                ProductDetailView()
            }
        }
    }
}

#Preview {
    ContentView()
        .environmentObject(Shop())
}


