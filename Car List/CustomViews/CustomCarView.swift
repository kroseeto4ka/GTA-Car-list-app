//
//  CustomCarView.swift
//  Car List
//
//  Created by Никита Сорочинский on 24.11.2024.
//

import UIKit

class CustomCarView: UIView {
    private let carNameLabel = UILabel()
    private let carImageView = UIImageView()
    private let carPriceLabel = UILabel()
    private let carCapacityLabel = UILabel()
    private var car: CarModel?
    
    var action: ((String) -> ())?
    
    init(car: CarModel) {
        super.init(frame: .zero)
        self.car = car
        setupView(car: car)
        setupLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        action?(car?.model ?? "")
    }
}

//MARK: - Setup View
private extension CustomCarView {
    private func setupView(car: CarModel) {
        clipsToBounds = true
        layer.cornerRadius = 20
        backgroundColor = .systemOrange
        
        setupCarNameLabel()
        setupCarImageView()
        setupCarPriceLabel()
        setupCarCapacityLabel()
        
        addSubview(carImageView)
        addSubview(carNameLabel)
        addSubview(carPriceLabel)
        addSubview(carCapacityLabel)
    }
    
    private func setupCarNameLabel() {
        carNameLabel.text = car?.carFullName
        carNameLabel.font = UIFont(name: Fonts.pricedown, size: 27)
        carNameLabel.textColor = .white
    }
    
    private func setupCarImageView() {
        carImageView.image = UIImage(named: car?.image ?? "")
        carImageView.contentMode = .scaleAspectFill
        carImageView.layer.cornerRadius = 20
        carImageView.clipsToBounds = true
    }
    
    private func setupCarPriceLabel() {
        carPriceLabel.font = UIFont(name: Fonts.pricedown, size: 15)
        carPriceLabel.text = "Цена: \(car?.price ?? 0)"
        carPriceLabel.textColor = .white
        
    }
    
    private func setupCarCapacityLabel() {
        carCapacityLabel.font = UIFont(name: Fonts.pricedown, size: 15)
        carCapacityLabel.textColor = .white
        carCapacityLabel.text = "Вместимость: \(car?.capacity ?? 0)"
    }
}


private extension CustomCarView {
    func setupLayout() {
        addMultipleTranslatesAutoresizingMaskIntoConstraints([
            carImageView,
            carNameLabel,
            carPriceLabel,
            carCapacityLabel
        ])
        
        
        NSLayoutConstraint.activate([
            widthAnchor.constraint(equalToConstant: 250),
            heightAnchor.constraint(equalToConstant: 250),
            
            carImageView.topAnchor.constraint(equalTo: topAnchor, constant: 10),
            carImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            carImageView.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.51796),
            carImageView.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.92),
            
            carNameLabel.topAnchor.constraint(equalTo: carImageView.bottomAnchor, constant: 10),
            carNameLabel.leadingAnchor.constraint(equalTo: carImageView.leadingAnchor),
            carNameLabel.trailingAnchor.constraint(equalTo: carImageView.trailingAnchor),
            
            carPriceLabel.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -10),
            carPriceLabel.leadingAnchor.constraint(equalTo: carImageView.leadingAnchor),
            
            carCapacityLabel.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -10),
            carCapacityLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
        ])
    }
}
