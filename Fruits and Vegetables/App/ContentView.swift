//
//  ContentView.swift
//  Fruits and Vegetables
//
//  Created by Chad Eymard on 2/29/24.
//

import SwiftUI

struct ContentView: View {
    var fruits: [Fruit] = fruitsData
    
    var body: some View {
        NavigationView {
            List {
                ForEach(fruits.shuffled()) {
                    fruit in
                    FruitRowView(fruit: fruit)
                        .padding(.vertical, 4)
                }
            }
            .navigationTitle("Fruits")
        } //: NAVIGATION
    }
}

struct ContentView_Preview: PreviewProvider {
    static var previews: some View {
        ContentView(fruits: fruitsData)
    }
}
