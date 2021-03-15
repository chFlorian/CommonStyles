//
//  TransparentButtonStyle.swift
//  
//
//  Created by florian schweizer on 15.03.21.
//

import SwiftUI

public struct TransparentRoundedButtonStyle: ButtonStyle {
    public let activeColor: Color
    public let passiveColor: Color
    
    public init(activeColor: Color, passiveColor: Color) {
        self.activeColor = activeColor
        self.passiveColor = passiveColor
    }
    
    public func makeBody(configuration: Self.Configuration) -> some View {
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
