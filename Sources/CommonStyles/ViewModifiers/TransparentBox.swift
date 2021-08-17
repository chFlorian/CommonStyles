//
//  TransparentBox.swift
//  
//
//  Created by florian schweizer on 15.03.21.
//

import SwiftUI

extension View {
    public func transparentBox(_ opacity: Double = 0.2) -> some View {
        self
            .padding()
            .frame(maxWidth: .infinity)
            .background(
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color(.systemBackground)
                            .opacity(opacity))
            )
    }
    
    public func transparentBoxWithShadow(_ opacity: Double = 0.2, shadowRadius: CGFloat = 10) -> some View {
        self
            .padding()
            .frame(maxWidth: .infinity)
            .background(
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color(.systemBackground)
                            .opacity(opacity))
            )
            .clipped()
            .shadow(radius: shadowRadius)
    }
}
