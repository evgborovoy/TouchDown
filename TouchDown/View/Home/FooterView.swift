//
//  FooterView.swift
//  TouchDown
//
//  Created by Evgeniy Borovoy on 12/3/24.
//

import SwiftUI

struct FooterView: View {
    var body: some View {
        VStack(spacing: 10) {
            Text("We offer the most comfortable, lightweight and durable football helmets")
                .foregroundStyle(.gray)
                .multilineTextAlignment(.center)
                .layoutPriority(1)
            
            Image("logo-lineal")
                .renderingMode(.template)
                .foregroundStyle(.gray)
            
            Text("Copyright © 2024 TouchDown\nAll rights reserved")
                .font(.footnote.bold())
                .foregroundStyle(.gray)
                .multilineTextAlignment(.center)
                .layoutPriority(1)
        }
        
        .padding()
    }
}

#Preview {
    FooterView()
}
