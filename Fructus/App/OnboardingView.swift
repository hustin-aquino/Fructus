//
//  OnboardingView.swift
//  Fructus
//
//  Created by justin.bitancor on 10/7/24.
//

import SwiftUI

struct OnboardingView: View {
    // MARK: - PROPERTY
    
    var fruits: [Fruit]
    
    // MARK: - BODY

    var body: some View {
        TabView {
            ForEach(fruits) { item in
                FruitCardView(fruit: item)
            } //: LOOP
        } //: TABVIEW
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}

// MARK: - PREVIEW

struct OnboardingView_Preview: PreviewProvider {
    static var previews: some View {
        OnboardingView(fruits: fruitsData)
    }
}
