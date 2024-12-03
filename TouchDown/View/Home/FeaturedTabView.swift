//
//  FeaturedTabView.swift
//  TouchDown
//
//  Created by Evgeniy Borovoy on 12/3/24.
//

import SwiftUI

struct FeaturedTabView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: -50) {
                ForEach(players) { player in
                    GeometryReader { geometry in
                        FeaturedItemView(player: player)
                            .rotation3DEffect(
                                Angle(
                                    degrees: Double((geometry.frame(in: .global).minX - 20) / -20)
                                ),
                                axis: (x: 0, y: 1, z: 0),
                                anchor: .center,
                                anchorZ: 0.0,
                                perspective: 1.0
                            )
                    }
                    .frame(width: 400, height: 250)
                }
            }
        }
    }
}

#Preview {
    FeaturedTabView()
}
