//
//  SectionView.swift
//  TouchDown
//
//  Created by Evgeniy Borovoy on 12/3/24.
//

import SwiftUI

struct SectionView: View {
    @State var rotateClockwise: Bool
    
    var body: some View {
        VStack(spacing: 0) {
            Spacer()
            
            Text("Categories".uppercased())
                .font(.footnote)
                .fontWeight(.bold)
                .foregroundStyle(.white)
                .rotationEffect(Angle(degrees: rotateClockwise ? 90 : -90))
            
            Spacer()
        }
        .background(colorGrey)
        .clipShape(RoundedRectangle(cornerRadius: 12))
        .frame(width: 85)
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    SectionView(rotateClockwise: false)
}
