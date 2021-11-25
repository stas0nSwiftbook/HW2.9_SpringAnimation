//
//  RandomAnimation.swift
//  HW2.9_SpringAnimation
//
//  Created by Станислав Буйновский on 23.11.2021.
//

struct Animation {
    let present: String
    let curve: String
    let force: Double
    let duration: Double
    let delay: Double
    
    var description: String {
        """
        present: \(present)
        curve: \(curve)
        force: \(stringFormatter(with: force))
        duration: \(stringFormatter(with: duration))
        delay: \(stringFormatter(with: delay))
        """
    }
    
    static func generateAnimation() -> Animation {
        Animation(present: DataManager.shared.presents.randomElement() ?? "",
                         curve: DataManager.shared.curves.randomElement() ?? "",
                         force: Double.random(in: 0.5...1.3),
                         duration: Double.random(in: 0.5...1.2),
                         delay: Double.random(in: 0.2...0.6))
    }
    
    private func stringFormatter(with digit: Double) -> String {
        String.localizedStringWithFormat("%.2F", digit)
    }
}
