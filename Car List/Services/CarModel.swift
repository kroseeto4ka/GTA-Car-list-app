//
//  CarModel.swift
//  Car List
//
//  Created by Никита Сорочинский on 23.11.2024.
//

struct CarModel {
    let image: String
    let vendor: String
    let model: String
    let capacity: Int
    let price: Int
    let description: String
    var carFullName: String {
        "\(vendor) \(model)"
    }
    let type: String
}
