//
//  OnboardingView.swift
//  Fruits and Vegetables
//
//  Created by Chad Eymard on 3/2/24.
//

import SwiftUI

struct OnboardingView: View {
    
    // MARK: - PROPERTIES
    var fruits: [Fruit] = fruitsData
    
    // MARK: - BODY
    var body: some View {
        TabView {
            ForEach(fruits[0...4]) { fruit in
                FruitCardView(fruit: fruit)
            }
        } //: TAB
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}

// MARK: - PREVIEW
struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView(fruits: fruitsData)
    }
}
