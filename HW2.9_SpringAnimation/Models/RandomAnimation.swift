//
//  RandomAnimation.swift
//  HW2.9_SpringAnimation
//
//  Created by Станислав Буйновский on 23.11.2021.
//

import Spring

struct RandomAnimation {
    private let presents: [String] = Spring.AnimationPreset.allCases.map {$0.rawValue}
    private let curves: [String] = Spring.AnimationCurve.allCases.map {$0.rawValue}
    
    var present: String = ""
    var curve: String = ""
    var force: CGFloat = 1
    var duration: CGFloat = 1
    var delay: CGFloat = 1
    
    mutating func generateAnimation() {
        present = presents.randomElement() ?? ""
        curve = curves.randomElement() ?? ""
        force = CGFloat.random(in: 0.5...1.3)
        duration = CGFloat.random(in: 0.5...1.2)
        delay = CGFloat.random(in: 0.2...0.6)
    }
    
    
}
