//
//  BrandItemView.swift
//  TouchDown
//
//  Created by Evgeniy Borovoy on 12/4/24.
//

import SwiftUI

struct BrandItemView: View {
    // MARK: - Properties
    let brand: Brand
    
    // MARK: - Body
    var body: some View {
        Image(brand.image)
            .resizable()
            .scaledToFit()
            .padding(3)
            .background(Color.white)
            .clipShape(RoundedRectangle(cornerRadius: 20))
            .background(
                RoundedRectangle(cornerRadius: 20).stroke(.gray, lineWidth: 1)
            )
    }
}

#Preview {
    BrandItemView(brand: brands[0])
}
