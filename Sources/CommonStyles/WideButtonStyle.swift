//
//  WideButtonStyle.swift
//  
//
//  Created by florian schweizer on 15.03.21.
//

import SwiftUI

public struct WideButtonStyle: ButtonStyle {
    public var isDestructive = false
    public var useDarkerColor = false
    public var darkerColor: Color = Color.gray.opacity(0.4)
    
    public init(isDestructive: Bool = false, useDarkerColor: Bool = false, darkerColor: Color = Color.gray.opacity(0.4)) {
        self.isDestructive = isDestructive
        self.useDarkerColor = useDarkerColor
        self.darkerColor = darkerColor
    }
    
    public func makeBody(configuration: Configuration) -> some View {
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
