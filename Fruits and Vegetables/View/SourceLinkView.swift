//
//  SourceLinkView.swift
//  Fruits and Vegetables
//
//  Created by Chad Eymard on 3/3/24.
//

import SwiftUI

struct SourceLinkView: View {
    // MARK: - PROPERTIES
    
    // MARK: - BODY
    var body: some View {
        GroupBox {
            HStack {
                Text("Content Source")
                Spacer()
                Link("Wikipedia", destination: URL(string: "https://wikipedia.com")!)
                Image(systemName: "arrow.up.right.square")
            } //: HSTACK
            .font(.footnote)
        }
    }
}

// MARK: - PREVIEW

struct SourceLinkView_Preview: PreviewProvider {
    static var previews: some View {
        SourceLinkView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
