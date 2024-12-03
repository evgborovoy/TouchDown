//
//  ContentView.swift
//  TouchDown
//
//  Created by Evgeniy Borovoy on 12/3/24.
//

import SwiftUI

struct ContentView: View {
    // MARK: - Body
    var body: some View {
        VStack(spacing: 0) {
            NavigationBarView()
                .padding()
                .background(.white)
                .shadow(color: .black.opacity(0.1), radius: 10, x: 0, y: 10)
            
            Spacer()
            
            FooterView()
                .padding(.horizontal)
        }
        .background {
            Color.colorBackground.ignoresSafeArea()
        }
    }
}

#Preview {
    ContentView()
}