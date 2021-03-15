//
//  TransparentButtonStyle.swift
//  
//
//  Created by florian schweizer on 15.03.21.
//

import SwiftUI

struct TransparentRoundedButtonStyle: ButtonStyle {
    let activeColor: Color
    let passiveColor: Color
    
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .frame(minWidth: 0, maxWidth: .infinity)
            .padding()
            .foregroundColor(.primary)
            .overlay(
                RoundedRectangle(cornerRadius: 16)
                    .stroke(configuration.isPressed ? passiveColor : activeColor, lineWidth: 1)
            )
            .padding(.horizontal, 20)
    }
}
