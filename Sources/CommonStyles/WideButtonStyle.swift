//
//  WideButtonStyle.swift
//  
//
//  Created by florian schweizer on 15.03.21.
//

import SwiftUI

struct WideButtonStyle: ButtonStyle {
    var isDestructive = false
    var useDarkerColor = false
    var darkerColor: Color = Color.gray.opacity(0.4)
    
    func makeBody(configuration: Configuration) -> some View {
        HStack {
            Spacer()
            
            configuration.label
                .foregroundColor(.primary)
                .font(Font.body.weight(.semibold))
            
            Spacer()
        }
        .padding()
        .background(
            RoundedRectangle(cornerRadius: 10)
                .fill(isDestructive ? Color.red : useDarkerColor ? darkerColor : Color(.systemBackground))
                .opacity(configuration.isPressed ? 0.5 : 0.8)
        )
    }
}
