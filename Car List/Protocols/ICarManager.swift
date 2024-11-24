//
//  ICarListManager.swift
//  Car List
//
//  Created by Никита Сорочинский on 23.11.2024.
//

protocol ICarManager {
    func getCurrentCar() -> CarModel
    func getCars() -> [CarModel]
}
