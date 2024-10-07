//
//  ContentView.swift
//  Fructus
//
//  Created by justin.bitancor on 10/7/24.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTY
    
    @State private var isShowingSettings: Bool = false
    
    var fruits: [Fruit] = fruitsData
    
    // MARK: - BODY
    
    var body: some View {
        NavigationView {
            List {
                ForEach(fruits.shuffled()) { item in
                    NavigationLink {
                        FruitDetailView(fruit: item)
                    } label: {
                        FruitRowView(fruit: item)
                            .padding(.vertical, 4)
                    }
                }
            } //: LIST
            .navigationTitle("Fruits")
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                        isShowingSettings = true
                    } label: {
                        Image(systemName: "slider.horizontal.3")
                    } //: BUTTON
                    .sheet(isPresented: $isShowingSettings) {
                        SettingsView()
                    }
                }
            }
        } //: NavigationView
    }
}

// MARK: - PREVIEW

struct ContentView_Preview: PreviewProvider {
    static var previews: some View {
        ContentView(fruits: fruitsData)
    }
}
