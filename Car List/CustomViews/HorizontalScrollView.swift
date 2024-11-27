//
//  HorizontalScrollView.swift
//  Car List
//
//  Created by Никита Сорочинский on 24.11.2024.
//

import UIKit

class HorizontalScrollView: UIView {
    private let scrollView = UIScrollView()
    private let stackView = UIStackView()
    
    var action: ((String) -> ())?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
        setupScrollView()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configure(with cars: [CarModel]) {
        for view in stackView.arrangedSubviews {
                stackView.removeArrangedSubview(view)
                view.removeFromSuperview()
            }
        
        for car in cars {
            let carView = CustomCarView(car: car)
            carView.action = tapView
            stackView.addArrangedSubview(carView)
        }
    }
    
    private func tapView(_ model: String) {
        action?(model)
    }
}

//MARK: - Setup View
private extension HorizontalScrollView {
    func setupView() {
        scrollView.addSubview(stackView)
        addSubview(scrollView)
        
        setupStackView()
    }
    
    func setupStackView() {
        stackView.axis = .horizontal
        stackView.spacing = 10
    }
}

//MARK: - Setup Layout
private extension HorizontalScrollView {
    func setupScrollView() {
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        stackView.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            scrollView.topAnchor.constraint(equalTo: topAnchor, constant: 16),
            scrollView.leadingAnchor.constraint(equalTo: leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: trailingAnchor),
            scrollView.bottomAnchor.constraint(equalTo: bottomAnchor),
            
            stackView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 16),
            stackView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor),
            stackView.topAnchor.constraint(equalTo: scrollView.topAnchor),
            stackView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor)
        ])
    }
}
