//
//  User.swift
//  Mini2_test
//
//  Created by Jonathan Aaron Wibawa on 19/06/24.
//

import SwiftData
import Foundation

@Model
class User: Identifiable {
    var id = UUID()
    var name: String?
    var targetCalories: Float?
    var targetCarbohydrates: Float?
    var targetProtein: Float?
    var targetFat: Float?
    var streak: Int = 0
    var coin: Int = 0
    @Relationship(deleteRule: .cascade) var dailyNutrition = [DailyNutrition]()
    @Relationship(deleteRule: .cascade) var cat: Cat
    
    init(id: UUID = UUID(), name: String, targetCalories: Float, targetCarbohydrates: Float, targetProtein: Float, targetFat: Float, cat: Cat) {
        self.name = name
        self.targetCalories = targetCalories
        self.targetCarbohydrates = targetCarbohydrates
        self.targetProtein = targetProtein
        self.targetFat = targetFat
        self.cat = cat
    }
}
