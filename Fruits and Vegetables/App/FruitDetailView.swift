//
//  FruitDetailView.swift
//  Fruits and Vegetables
//
//  Created by Chad Eymard on 3/3/24.
//

import SwiftUI

struct FruitDetailView: View {
    
    // MARK: - PROPERTIES
    var fruit: Fruit
    
    // MARK: - BODY
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .center, spacing: 20) {
                    // MARK: - HEADER
                    FruitHeaderView(fruit: fruit)
                    
                    VStack(alignment: .leading, spacing: 20) {
                        // MARK: - TITLE
                        Text(fruit.title)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(fruit.gradientColors[1])
                        
                        // MARK: - HEADLINE
                        Text(fruit.headline)
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                        
                        // MARK: - NUTRIENTS
                        FruitNutrientsView(fruit: fruit)
                        
                        // MARK: - SUBHEADING
                        Text("Learn more about \(fruit.title)".uppercased())
                            .fontWeight(.bold)
                            .foregroundColor(fruit.gradientColors[1])
                        
                        // MARK: - DESCRIPTION
                        Text(fruit.description)
                            .multilineTextAlignment(.leading)
                        
                        // MARK: - LINK
                        SourceLinkView()
                            .padding(.top, 10)
                            .padding(.bottom, 40)
                    } //: VSTACK
                    .padding(.horizontal, 20)
                    .frame(maxWidth: 640, alignment: .center)
                } //: VSTACK
                .navigationBarTitle(fruit.title, displayMode: .inline)
                .navigationBarHidden(true)
            } //: ScrollView
            .edgesIgnoringSafeArea(.top)
        } //: NAVIGATION
    }
}

// MARK: - PREVIEW

struct FruitDetailView_Preview: PreviewProvider {
    static var previews: some View {
        FruitDetailView(fruit: fruitsData[1])
    }
}
