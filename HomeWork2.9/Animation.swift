//
//  Animation.swift
//  HomeWork2.9
//
//  Created by Михаил Позялов on 25.11.2021.
//

struct Animation {
    
    let name: String
    let curve: String
    let force: Double
    let duration: Double
    let delay: Double
    
    var description: String {
    """
    present: \(name)
    present: \(curve)
    present: \(String(format: "%.02f", force))
    present: \(String(format: "%.02f", duration))
    present: \(String(format: "%.02f", delay))
    """
    }
    
    static func getRandomAnimation() -> Animation {
        Animation(
            name: DataManager.shared.animations.randomElement()?.rawValue ?? "sliderLeft",
            curve: DataManager.shared.curves.randomElement()?.rawValue ?? "easeIn",
            force: Double.random(in: 0...1.5),
            duration: Double.random(in: 1...2),
            delay: 0.3
        )
    }
}
