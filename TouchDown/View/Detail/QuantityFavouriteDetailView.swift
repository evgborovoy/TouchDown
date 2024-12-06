//
//  QuantityFavouriteDetailView.swift
//  TouchDown
//
//  Created by Evgeniy Borovoy on 12/6/24.
//

import SwiftUI

struct QuantityFavouriteDetailView: View {
    // MARK: - Properties
    @State private var counter: Int = 0
    // MARK: - Body
    var body: some View {
        HStack(spacing: 6) {
            Button(action: {
                if counter > 0 {
                    counter -= 1
                }
            }) {
                Image(systemName: "minus.circle")
            }
            
            Text("\(counter)")
                .fontWeight(.semibold)
                .frame(minWidth: 36)
            
            Button(action: {
                if counter < 100 {
                    counter += 1
                }
            }) {
                Image(systemName: "plus.circle")
            }
            
            Spacer()
            
            Button(action: {}) {
                Image(systemName: "heart.circle")
                    .foregroundStyle(.pink)
            }
        }
        .font(.system(.title, design: .rounded))
        .foregroundStyle(.black)
        .imageScale(.large)
    }
}

#Preview {
    QuantityFavouriteDetailView()
}
