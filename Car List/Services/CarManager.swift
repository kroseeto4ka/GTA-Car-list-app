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
    
    func getCar(by model: String) -> CarModel? {
        for car in getCars() {
            if car.model == model {
                return car
            }
        }
        return nil
    }
    
    func getCarTypes() -> [String] {
        var carTypesSet = Set<String>()
        for car in getCars() {
            carTypesSet.insert(car.type)
        }
        return Array(carTypesSet).sorted(by: >)
    }
}
