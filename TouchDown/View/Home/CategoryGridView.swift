//
//  CategoryGridView.swift
//  TouchDown
//
//  Created by Evgeniy Borovoy on 12/3/24.
//

import SwiftUI

struct CategoryGridView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHGrid(rows: gridLayout, alignment: .center, spacing: columnSpacing, pinnedViews: []) {
                Section(content: {
                    ForEach(categories) { category in
                        CategoryItemView(category: category)
                    }
                }, header: {
                    SectionView(rotateClockwise: false)
                }, footer: {
                    SectionView(rotateClockwise: true)
                })
            }
            .frame(height: 140)
            .padding(.horizontal, 15)
            .padding(.vertical, 10)
        }
    }
}

#Preview {
    CategoryGridView()
}
