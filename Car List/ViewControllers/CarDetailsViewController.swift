//
//  CarDetailsViewController.swift
//  Car List
//
//  Created by Никита Сорочинский on 24.11.2024.
//

import UIKit

class CarDetailsViewController: UIViewController {

    private let descriptionLabel = UILabel()
    private let CarImage = UIImage()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        setupLayout()
    }
    
    func configure(car: CarModel?) {
        descriptionLabel.text = car?.description
    }
}

extension CarDetailsViewController {
    private func setupView() {
        setupGradient()
        setupLabel()
        view.addSubview(descriptionLabel)
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
    
    private func setupLayout() {
        descriptionLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            descriptionLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            descriptionLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            descriptionLabel.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.8),
        ])
    }
}
