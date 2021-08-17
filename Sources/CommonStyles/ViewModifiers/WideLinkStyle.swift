//
//  WideLinkStyle.swift
//  
//
//  Created by florian schweizer on 17.08.21.
//

import SwiftUI

struct WideLinkStyle: ViewModifier {
    private let isDestructive: Bool
    private let color: Color
    private let cornerRadius: CGFloat
    
    func body(content: Content) -> some View {
        HStack {
            Spacer()
            content
                .font(.title3.weight(.semibold))
                .foregroundColor(Color(.systemBackground))
            Spacer()
        }
        .frame(height: 50)
        .frame(maxWidth: .infinity)
        .background(isDestructive ? Color.red : color)
        .cornerRadius(cornerRadius)
        .padding(.horizontal)
    }
}

extension View {
    public func wideLinkStyle(isDestructive: Bool = false, color: Color = .blue, cornerRadius: CGFloat = 10) -> some View {
        modifier(WideLinkStyle(isDestructive: isDestructive, color: color, cornerRadius: cornerRadius))
    }
}
