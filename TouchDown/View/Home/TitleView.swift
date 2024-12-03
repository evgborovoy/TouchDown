//
//  TitleView.swift
//  TouchDown
//
//  Created by Evgeniy Borovoy on 12/3/24.
//

import SwiftUI

struct TitleView: View {
    let title: String
    var body: some View {
        HStack {
            Text(title)
                .font(.largeTitle)
                .fontWeight(.heavy)
            
            Spacer()
        }
        .padding(EdgeInsets(top: 15, leading: 16, bottom: 10, trailing: 16))
    }
}

#Preview {
    TitleView(title: "Helmets")
}
