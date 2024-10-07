//
//  FructusApp.swift
//  Fructus
//
//  Created by justin.bitancor on 10/7/24.
//

import SwiftUI

@main
struct FructusApp: App {
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    @AppStorage("isShowingSettings") var isShowingSettings: Bool = false
    
    var body: some Scene {
        WindowGroup {
            ZStack {
                if isOnboarding {
                    OnboardingView(fruits: fruitsData)
                } else {
                    ContentView()
                }
            }
            .sheet(isPresented: $isShowingSettings) {
                SettingsView()
            }
        }
        
    }
}
