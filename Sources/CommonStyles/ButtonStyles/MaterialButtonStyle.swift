//
//  MaterialButtonStyle.swift
//  MaterialButtonStyle
//
//  Created by florian schweizer on 09.09.21.
//

import SwiftUI

@available(iOS 15.0, *)
public struct MaterialButtonStyle: ButtonStyle {
    private let material: Material
    private let cornerRadius: CGFloat
    
    public init(material: Material = .regular, cornerRadius: CGFloat = 10) {
        self.material = material
        self.cornerRadius = cornerRadius
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
            RoundedRectangle(cornerRadius: cornerRadius)
                .foregroundStyle(material)
                .opacity(configuration.isPressed ? 0.75 : 1)
        )
    }
}
