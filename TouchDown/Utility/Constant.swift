//
//  Constant.swift
//  TouchDown
//
//  Created by Evgeniy Borovoy on 12/3/24.
//

import SwiftUI

// Data
let players: [Player] = Bundle.main.decode("player.json")
let categories: [Category] = Bundle.main.decode("category.json")
let products: [Product] = Bundle.main.decode("product.json")
let brands: [Brand] = Bundle.main.decode("brand.json")
let sampleProduct: Product = products[0]
    

// Color
let colorBackground: Color = Color("Background")
let colorGrey: Color = Color(UIColor.systemGray4)

// Layout
let columnSpacing: CGFloat = 10
let rowSpacing: CGFloat = 10
var gridLayout: [GridItem] {
    return Array(repeating: GridItem(.flexible(), spacing: rowSpacing), count: 2)
}

