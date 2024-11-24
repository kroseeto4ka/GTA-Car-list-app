//
//  UIView.swift
//  Car List
//
//  Created by Никита Сорочинский on 24.11.2024.
//

import UIKit

extension UIView {
    func addMultipleTranslatesAutoresizingMaskIntoConstraints(_ views: [UIView]) {
        for view in views {
            view.translatesAutoresizingMaskIntoConstraints = false
        }
    }
}
