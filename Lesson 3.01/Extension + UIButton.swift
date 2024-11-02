//
//  Extension + UIButton.swift
//  Lesson 3.01
//
//  Created by Alexander Shevtsov on 23.10.2024.
//

import UIKit

extension UIButton {
    func pulsate() { // название метода -> действие пульсация кнопки
        let pulse = CASpringAnimation(keyPath: "transform.scale")
        pulse.fromValue = 0.95 // уменьшение площади
        pulse.toValue = 1 // исходное значение
        pulse.autoreverses = true // еще разок
        pulse.repeatCount = 2 // кол повторов
        pulse.duration = 0.6 // продолжительность анимации
        pulse.initialVelocity = 0.5 // начальная скорость анимации
        pulse.damping = 1 // затухание
        // слой
        layer.add(pulse, forKey: nil)
    }
}

