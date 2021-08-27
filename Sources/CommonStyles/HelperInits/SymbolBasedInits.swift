//
//  SymbolBasedInits.swift
//  
//
//  Created by florian schweizer on 27.08.21.
//

import SwiftUI

extension Link where Label == HStack<TupleView<(Image, Text, Spacer)>> {
    public init(_ title: String, symbol: String, destination: URL) {
        self.init(destination: destination, label: {
            HStack(spacing: 12) {
                Image(systemName: symbol)
                Text(title)
                Spacer()
            }
        })
    }
}

extension NavigationLink where Label == HStack<TupleView<(Image, Text, Spacer)>> {
    public init(_ title: String, symbol: String, destination: Destination) {
        self.init(destination: destination) {
            HStack(spacing: 12) {
                Image(systemName: symbol)
                Text(title)
                Spacer()
            }
        }
    }
}

extension Button where Label == HStack<TupleView<(Image, Text, Spacer)>> {
    public init(_ title: String, symbol: String, action: @escaping () -> Void) {
        self.init(action: action) {
            HStack(spacing: 12) {
                Image(systemName: symbol)
                Text(title)
                Spacer()
            }
        }
    }
}
