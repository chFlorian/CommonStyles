//
//  RoundedButtonStyle.swift
//  
//
//  Created by florian schweizer on 15.03.21.
//

import SwiftUI

struct RoundedButtonStyle: ButtonStyle {
    let primaryColor: Color
    let secondaryColor: Color
    
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .frame(minWidth: 0, maxWidth: .infinity)
            .padding()
            .foregroundColor(.white)
            .background(
                configuration.isPressed ? LinearGradient(gradient: Gradient(colors: [primaryColor.opacity(0.6), secondaryColor.opacity(0.6)]), startPoint: .leading, endPoint: .trailing) : LinearGradient(gradient: Gradient(colors: [primaryColor, secondaryColor]), startPoint: .leading, endPoint: .trailing)
            )
            .cornerRadius(16)
            .padding(.horizontal, 20)
    }
}
