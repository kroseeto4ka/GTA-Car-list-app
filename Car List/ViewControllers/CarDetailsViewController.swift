//
//  CarDetailsViewController.swift
//  Car List
//
//  Created by Никита Сорочинский on 24.11.2024.
//

import UIKit

class CarDetailsViewController: UIViewController {

    private let descriptionLabel = UILabel()
    private let carImageView = UIImageView()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        setupLayout()
    }
    
    func configure(car: CarModel?) {
        descriptionLabel.text = car?.description
        carImageView.image = UIImage(named: car?.vendor ?? "")
    }
}

//MARK: - Setup View
extension CarDetailsViewController {
    private func setupView() {
        setupGradient()
        setupLabel()
        setupImage()
        view.addSubview(descriptionLabel)
        view.addSubview(carImageView)
    }
    private func setupGradient() {
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = view.bounds
        gradientLayer.colors = [
            UIColor.systemYellow.cgColor,
            UIColor.systemOrange.cgColor
        ]
        gradientLayer.locations = [0.0, 1.0]
        gradientLayer.startPoint = CGPoint(x: 0.5, y: 0.0)
        view.layer.insertSublayer(gradientLayer, at: 0)
    }
    
    private func setupLabel() {
        descriptionLabel.textAlignment = .natural
        descriptionLabel.font = UIFont(name: Fonts.pricedown, size: 20)
        descriptionLabel.numberOfLines = 0
        descriptionLabel.textColor = .white
        descriptionLabel.lineBreakMode = .byClipping
    }
    
    private func setupImage() {
        carImageView.contentMode = .scaleAspectFit
        carImageView.layer.cornerRadius = 20
        carImageView.clipsToBounds = true
    }
}

//MARK: Setup Layout
extension CarDetailsViewController {
    private func setupLayout() {
        descriptionLabel.translatesAutoresizingMaskIntoConstraints = false
        carImageView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            carImageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 10),
            carImageView.heightAnchor.constraint(equalToConstant: 200),
            carImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            carImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
            
            descriptionLabel.topAnchor.constraint(equalTo: carImageView.bottomAnchor, constant: 10),
            descriptionLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            descriptionLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10)
        ])
    }
}
