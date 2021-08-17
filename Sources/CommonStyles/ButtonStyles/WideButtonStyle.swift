//
//  WideButtonStyle.swift
//  
//
//  Created by florian schweizer on 15.03.21.
//

import SwiftUI

public struct WideButtonStyle: ButtonStyle {
    private let isDestructive: Bool
    private let color: Color
    private let cornerRadius: CGFloat
    
    public init(isDestructive: Bool = false, color: Color = .blue, cornerRadius: CGFloat = 10) {
        self.isDestructive = isDestructive
        self.color = color
        self.cornerRadius = cornerRadius
    }
    
    public func makeBody(configuration: Configuration) -> some View {
        HStack {
            Spacer()
            
            configuration.label
                .foregroundColor(Color(.systemBackground))
                .font(Font.body.weight(.semibold))
            
            Spacer()
        }
        .padding()
        .background(
            RoundedRectangle(cornerRadius: cornerRadius)
                .fill(isDestructive ? Color.red : color)
                .opacity(configuration.isPressed ? 0.75 : 1)
        )
    }
}
