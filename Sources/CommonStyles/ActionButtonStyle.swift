//
//  ActionButtonStyle.swift
//
//
//  Created by florian schweizer on 15.03.21.
//

import SwiftUI
import UIKit

@available(iOS 14.0, *)

struct ActionButtonStyle: ButtonStyle {
    enum Action {
        case confirm, cancel, delete

        var bgColor: Color {
            switch self {
            case .confirm:
                return Color(UIColor.systemGreen)
            case .delete:
                return Color(UIColor.systemRed)
            case .cancel:
                return Color(UIColor.systemBackground)
            }
        }

        var fgColor: Color {
            if self == .cancel {
                return Color(UIColor.label)
            }
            return Color.white
        }

        var stroke: Color {
            if self == .cancel {
                return fgColor
            }
            return bgColor
        }

        var image: Image {
            switch self {
            case .confirm:
                return Image(systemName: "checkmark.rectangle.fill")
            case .cancel:
                return Image(systemName: "clear.fill")
            case .delete:
                return Image(systemName: "trash")
            }
        }
    }

    var actionType: Action
    var withImage: Bool = true

    func makeBody(configuration: Configuration) -> some View {
        HStack {
            if withImage {
                actionType.image
            }
            configuration.label
        }
        .padding()
        .background(
            RoundedRectangle(cornerRadius: 8, style: .continuous)
                .fill(actionType.bgColor)
                .overlay(
                    RoundedRectangle(cornerRadius: 8, style: .continuous)
                        .stroke(actionType.stroke)
                )
        )
        .foregroundColor(actionType.fgColor)
        .font(Font.bold(.body)())
        .opacity(configuration.isPressed ? 0.6 : 1.0)
    }
}
