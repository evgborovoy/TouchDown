//
//  CategoryModel.swift
//  TouchDown
//
//  Created by Evgeniy Borovoy on 12/3/24.
//

import Foundation

struct Category: Codable, Identifiable {
    let id: Int
    let name: String
    let image: String
}
