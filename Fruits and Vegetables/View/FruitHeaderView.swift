//
//  FruitHeaderView.swift
//  Fruits and Vegetables
//
//  Created by Chad Eymard on 3/3/24.
//

import SwiftUI

struct FruitHeaderView: View {
    // MARK: - PROPERTIES
    var fruit: Fruit
    @State private var isAnimating: Bool = false
    
    // MARK: - BODY
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .topLeading, endPoint: .bottom)
            Image(fruit.image)
                .resizable()
                .scaledToFit()
                .shadow(color: .black.opacity(0.15), radius: 8, x: 6, y: 8)
                .padding(.vertical, 20)
                .scaleEffect(isAnimating ? 1.0 : 0.6)
        } //: ZSTACK
        .frame(height: 440)
        .onAppear() {
            withAnimation(.easeOut(duration: 0.5)) {
                isAnimating = true
            }
        }
    }
}

// MARK: - PREVIEW

struct FruitHeaderView_Preview: PreviewProvider {
    static var previews: some View {
        FruitHeaderView(fruit: fruitsData[1])
            .previewLayout(.fixed(width: 375, height: 440))
    }
}
