//
//  CheckBoxStyle.swift
//
//
//  Created by florian schweizer on 10.11.20.
//
import SwiftUI

struct CheckboxStyle: ToggleStyle {
    let primaryColor: Color
 
    func makeBody(configuration: Self.Configuration) -> some View {
        HStack {
            configuration.label
 
            Spacer()
 
            Image(systemName: configuration.isOn ? "checkmark.circle.fill" : "circle")
                .resizable()
                .frame(width: 24, height: 24)
                .foregroundColor(configuration.isOn ? primaryColor : .gray)
                .font(.system(size: 20, weight: .bold, design: .default))
                .onTapGesture {
                    configuration.isOn.toggle()
                }
        }
 
    }
}
