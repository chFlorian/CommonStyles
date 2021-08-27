//
//  Alignments.swift
//  
//
//  Created by florian schweizer on 27.08.21.
//

import SwiftUI

extension View {
    public func leading() -> some View {
        HStack {
            self
            Spacer()
        }
    }
    
    public func trailing() -> some View {
        HStack {
            Spacer()
            self
        }
    }
    
    public func top() -> some View {
        VStack {
            self
            Spacer()
        }
    }
    
    public func bottom() -> some View {
        VStack {
            Spacer()
            self
        }
    }
}
