//
//  CategoryModel.swift
//  TouchDown
//
//  Created by Gauss on 07/05/2022.
//

import Foundation

struct Category: Codable, Identifiable {
    let id: Int
    let name: String
    let image: String
}
