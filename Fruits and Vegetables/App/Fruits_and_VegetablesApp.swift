//
//  Fruits_and_VegetablesApp.swift
//  Fruits and Vegetables
//
//  Created by Chad Eymard on 2/29/24.
//

import SwiftUI

@main
struct Fruits_and_VegetablesApp: App {
    
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    
    var body: some Scene {
        WindowGroup {
            if isOnboarding {
                OnboardingView()
            } else {
                ContentView()
            }
            
        }
    }
}
