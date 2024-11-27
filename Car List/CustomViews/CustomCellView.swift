//
//  CustomCellView.swift
//  Car List
//
//  Created by Никита Сорочинский on 26.11.2024.
//

import UIKit

class CustomCellView: UITableViewCell {
    private let carTypeLabel = UILabel()
    private let horizontalScrollView = HorizontalScrollView()

    var action: ((String) -> ())?
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupView()
    }
    
    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configure(carsType: String, cars: [CarModel]) {
        carTypeLabel.text = carsType
        horizontalScrollView.configure(with: cars)
        horizontalScrollView.action = action
    }
}
    
//MARK: - Setup View
private extension CustomCellView {
    private func setupView() {
        setupLabel()
        setupHorizontalView()
        setupLayout()
    }
    
    private func setupLabel() {
        carTypeLabel.textColor = .black
        carTypeLabel.font = UIFont(name: Fonts.pricedown, size: 27)
        contentView.addSubview(carTypeLabel)
    }
    
    private func setupHorizontalView() {
        contentView.addSubview(horizontalScrollView)
    }
}

//MARK: - Setup Layout
private extension CustomCellView {
    private func setupLayout() {
        carTypeLabel.translatesAutoresizingMaskIntoConstraints = false
        horizontalScrollView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            carTypeLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10),
            carTypeLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10),
            carTypeLabel.heightAnchor.constraint(equalToConstant: 30),
            
            horizontalScrollView.topAnchor.constraint(equalTo: carTypeLabel.bottomAnchor, constant: 5),
            horizontalScrollView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            horizontalScrollView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            horizontalScrollView.heightAnchor.constraint(equalToConstant: 300),
            horizontalScrollView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -5)
        ])
    }
}
