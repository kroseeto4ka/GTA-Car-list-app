//
//  CarListViewController.swift
//  Car List
//
//  Created by Никита Сорочинский on 23.11.2024.
//

import UIKit

class CarListViewController: UIViewController {
    
    var carManager: ICarManager!
    private let horizontalScroll = HorizontalScrollView()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        setupLayout()
    }
    
    private func presentDetailsVC(model: String) {
        guard let car = getCar(model: model) else { return }
        let detailsVC = CarDetailsViewController()
        detailsVC.configure(car: car)
        present(detailsVC, animated: true)
    }
    
    private func getCar(model: String) -> CarModel? {
        for car in carManager.getCars() {
            if car.model == model {
                return car
            }
        }
        return nil
    }
}

extension CarListViewController {
    private func setupView() {
        view.backgroundColor = .white
        horizontalScroll.configure(with: carManager.getCars())
        horizontalScroll.action = presentDetailsVC
        view.addSubview(horizontalScroll)
    }
}

//MARK: - Setup Layout
extension CarListViewController {
    private func setupLayout() {
        horizontalScroll.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            horizontalScroll.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            horizontalScroll.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            horizontalScroll.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            horizontalScroll.heightAnchor.constraint(equalToConstant: 270) // обязательно определяем высоту стека.
        ])
    }
}
