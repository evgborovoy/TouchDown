//
//  CategoryItemView.swift
//  TouchDown
//
//  Created by Evgeniy Borovoy on 12/3/24.
//

import SwiftUI

struct CategoryItemView: View {
    let category: Category
    
    var body: some View {
        Button(action: {}, label: {
            HStack(alignment: .center, spacing: 6) {
                Image(category.image)
                    .renderingMode(.template)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30, height: 30)
                    .foregroundStyle(.gray)
                
                Text(category.name.uppercased())
                    .fontWeight(.medium)
                    .foregroundStyle(.gray)
                
                Spacer()
            }
            .padding()
            .background(.white)
            .clipShape(RoundedRectangle(cornerRadius: 15))
            .background((RoundedRectangle(cornerRadius: 15).stroke(Color.gray, lineWidth: 1)))
        })
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    CategoryItemView(category: categories[0])
        .padding()
        .background(.colorBackground)
}
