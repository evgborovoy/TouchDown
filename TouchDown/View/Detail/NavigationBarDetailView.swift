//
//  NavigationBarDetailView.swift
//  TouchDown
//
//  Created by Evgeniy Borovoy on 12/5/24.
//

import SwiftUI

struct NavigationBarDetailView: View {
    var body: some View {
        HStack {
            Button(action: {
                
            }, label: {
                Image(systemName: "chevron.left")
                    .font(.title)
                    .foregroundColor(.white)
            })
            
            Spacer()
            
            Button(action: {
                
            }, label: {
                Image(systemName: "cart")
                    .font(.title)
                    .foregroundColor(.white)
            })

        }
    }
}

#Preview {
    NavigationBarDetailView()
        .background(.green)
}
