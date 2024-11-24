//
//  CarManager.swift
//  Car List
//
//  Created by Никита Сорочинский on 23.11.2024.
//

class CarManager {
    var cars: [CarModel] = []
    private var currentIndex = 0
    
    init() {
        cars = CarRepository().getData()
    }
}

//MARK: - ICarManager
extension CarManager: ICarManager {
    func getCurrentCar() -> CarModel {
        cars[currentIndex]
    }
    
    func getCars() -> [CarModel] {
        cars
    }
}
