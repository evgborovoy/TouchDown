//
//  RatingSizesDetailView.swift
//  TouchDown
//
//  Created by Evgeniy Borovoy on 12/5/24.
//

import SwiftUI

struct RatingSizesDetailView: View {
    // MARK: - Properties
    let sizes: [String] = ["XS", "S", "M", "L", "XL"]
    
    // MARK: - Body
    var body: some View {
        HStack(alignment: .top, spacing: 3) {
            VStack(alignment: .leading, spacing: 3) {
                Text("Ratings")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundStyle(.gray.opacity(0.5))
                
                HStack(alignment: .center, spacing: 3) {
                    ForEach(1...5, id: \.self) { rating in
                        Button(action: {}) {
                            Image(systemName: "star.fill")
                                .frame(width: 30, height: 30)
                                .background(.gray.opacity(0.5))
                                .clipShape(RoundedRectangle(cornerRadius: 5))
                                .foregroundStyle(.white)
                        }
                    }
                }
            }
            
            Spacer()
            
            VStack(alignment: .trailing, spacing: 3) {
                Text("Sizes")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundStyle(.gray.opacity(0.5))
                
                HStack(alignment: .center, spacing: 5) {
                    ForEach(sizes, id: \.self) { size in
                        Button(action: {}) {
                            Text(size)
                                .font(.footnote)
                                .fontWeight(.heavy)
                                .foregroundStyle(.gray.opacity(0.5))
                                .frame(width: 30, height: 30)
                                .clipShape(RoundedRectangle(cornerRadius: 5))
                                .background(
                                    RoundedRectangle(cornerRadius: 5).stroke(Color.gray.opacity(0.5), lineWidth: 2)
                                )
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    RatingSizesDetailView()
}
