//
//  BrandGridView.swift
//  TouchDown
//
//  Created by Evgeniy Borovoy on 12/4/24.
//

import SwiftUI

struct BrandGridView: View {
    // MARK: - Body
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHGrid(rows: gridLayout, spacing: columnSpacing) {
                ForEach(brands) { brand in
                    BrandItemView(brand: brand)
                }
            }
            .frame(height: 200)
            .padding()
        }
    }
}

#Preview {
    BrandGridView()
}
