//
//  NavigationBarView.swift
//  TouchDown
//
//  Created by Evgeniy Borovoy on 12/3/24.
//

import SwiftUI

struct NavigationBarView: View {
    // MARK: - Properties
    @State private var isAnimated: Bool = false
    
    // MARK: - Body
    var body: some View {
        HStack {
            // MARK: - Search button
            Button {
                
            } label: {
                Image(systemName: "magnifyingglass")
                    .font(.title)
                    .foregroundStyle(.black)
            }
            
            Spacer()
            
            LogoView()
                .opacity(isAnimated ? 1 : 0)
                .offset(x: isAnimated ? 0 : 8, y: isAnimated ?  0 : -15)
                .onAppear {
                    withAnimation(.easeInOut(duration: 0.7)) {
                        isAnimated.toggle()
                    }
                }
                    
                    Spacer()
                    
                    // MARK: - Cart button
                    Button {
                        
                    } label: {
                        ZStack {
                            Image(systemName: "cart")
                                .font(.title)
                                .foregroundStyle(.black)
                            
                            Circle()
                                .fill(.red)
                                .frame(width: 16, height: 16)
                                .offset(x: 10, y: -10)
                        }
                    }
                    
                    
                }
        }
    }
    
    #Preview {
        NavigationBarView()
    }
