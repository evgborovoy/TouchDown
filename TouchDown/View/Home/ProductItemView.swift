//
//  ProductItemView.swift
//  TouchDown
//
//  Created by Evgeniy Borovoy on 12/3/24.
//

import SwiftUI

struct ProductItemView: View {
    // MARK: - Properties
    let product: Product
    
    // MARK: - Body
    var body: some View {
        VStack(alignment: .leading, spacing: 6) {
            ZStack {
                Image(product.image)
                    .resizable()
                    .scaledToFit()
            }
            .background(Color(red: product.red, green: product.green, blue: product.blue))
            .clipShape(RoundedRectangle(cornerRadius: 30))
            
            Text(product.name)
                .font(.title3)
                .fontWeight(.black)
            
            Text(product.formattedPrice)
                .fontWeight(.semibold)
                .foregroundStyle(.gray)
        }
        
    }
}

#Preview {
    ProductItemView(product: products[0])
        .frame(width: 200, height: 300)
}
