//
//  CarListViewController.swift
//  Car List
//
//  Created by Никита Сорочинский on 23.11.2024.
//

import UIKit

class CarListViewController: UIViewController {
    private let tableView = UITableView()
    private let cellIdentifier = "cellIdentifier"
    var carManager: ICarManager!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        setupLayout()
    }
    
    private func presentDetailsVC(model: String) {
        guard let car = carManager.getCar(by: model) else { return }
        let detailsVC = CarDetailsViewController()
        detailsVC.configure(car: car)
        present(detailsVC, animated: true)
    }
}

//MARK: - UITableViewDataSource
extension CarListViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return carManager.getCarTypes().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(
            withIdentifier: cellIdentifier,
            for: indexPath
        ) as? CustomCellView else {
            return UITableViewCell()
        }

        let carType = carManager.getCarTypes()[indexPath.row]
        var cars: [CarModel] = []
        for car in carManager.getCars() {
            if car.type == carType {
                cars.append(car)
            }
        }
        
        cell.action = presentDetailsVC
        cell.selectionStyle = .none
        cell.configure(carsType: carType, cars: cars)
        
        return cell
    }
}

//MARK: - Setup View
extension CarListViewController {
    private func setupView() {
        view.backgroundColor = .white
        setupTableView()
        view.addSubview(tableView)
    }
    
    private func setupTableView() {
        tableView.backgroundColor = .white
        tableView.dataSource = self
        tableView.separatorStyle = .none
        tableView.register(CustomCellView.self, forCellReuseIdentifier: cellIdentifier)
    }
}

//MARK: - Setup Layout
extension CarListViewController {
    private func setupLayout() {
        tableView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            tableView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
        ])
    }
}
