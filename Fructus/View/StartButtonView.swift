//
//  StartButtonView.swift
//  Fructus
//
//  Created by justin.bitancor on 10/7/24.
//

import SwiftUI

struct StartButtonView: View {
    // MARK: - PROPERTY
    
    // MARK: - BODY
    
    var body: some View {
        Button {
            print("Exit the onboarding.")
        } label: {
            HStack(spacing: 8) {
                Text("Start")
                
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
            } //: HSTACK
            .padding(.horizontal, 16)
            .padding(.vertical, 10)
            .background(
                Capsule().strokeBorder(Color.white, lineWidth: 1.25)
            )
        } //: BUTTON
        .accentColor(.white)

    }
}

// MARK: - PREVIEW

struct StartButtonView_Preview: PreviewProvider {
    static var previews: some View {
        StartButtonView()
            .previewLayout(.sizeThatFits)
    }
}
