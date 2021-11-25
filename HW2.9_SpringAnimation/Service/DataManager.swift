//
//  DataManager.swift
//  HW2.9_SpringAnimation
//
//  Created by Станислав Буйновский on 24.11.2021.
//

import Spring

class DataManager {
    
    static let shared = DataManager()
    
    let presents = Spring.AnimationPreset.allCases.map {$0.rawValue}
    let curves = Spring.AnimationCurve.allCases.map {$0.rawValue}
    
    private init() {}
}
