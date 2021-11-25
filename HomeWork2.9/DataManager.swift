//
//  Extension + UIButton.swift
//  HomeWork2.9
//
//  Created by Михаил Позялов on 24.11.2021.
//

import Spring

class DataManager {
    static let shared = DataManager()
    
    let animations = Spring.AnimationPreset.allCases
    let curves = Spring.AnimationCurve.allCases
    
    private init() {}
}
