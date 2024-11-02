//
//  ViewController.swift
//  Lesson 3.01
//
//  Created by Alexander Shevtsov on 23.10.2024.
//

import UIKit
import SpringAnimation

final class ViewController: UIViewController {
    
    @IBOutlet var coreAnimationView: UIView!
    @IBOutlet var springAnimationView: SpringView!
    
    private var animationStarted = false // по умолчанию анимация не запущена
    
    // Type(параметр): UIButton -> будет меняться внешка кнопки
    @IBAction func runCoreAnimation(_ sender: UIButton) {
        // обращаемся к Вью, вызываем метод
        UIView.animate(
            withDuration: 0.5, // продолжительность анимации
            delay: 0, // задержка по нажатию кнопки | .autoreverse делает +40 поинтов
            options: [.autoreverse, .repeat]) { [unowned self] in // обработка утечки памяти!
                if !animationStarted { // если анимация false, то запускаем анимацию
                    coreAnimationView.frame.origin.x -= 40 // смещение Вью на 40 поинтов в лево
                    animationStarted.toggle() // меняем значение на противоположное
                }
            }
        
        sender.pulsate() // обращаемся к сендеру и вызываем метод
    }
    
    @IBAction func runSpringAnimation(_ sender: SpringButton) {
        springAnimationView.animation = "shake"
        springAnimationView.curve = "easeInOut"
        springAnimationView.force = 2
        springAnimationView.animate()
        
        sender.animation = "pop"
        sender.duration = 2
        sender.animate()
    }
}

