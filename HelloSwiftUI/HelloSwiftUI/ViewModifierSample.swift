//
//  ViewModifierSample.swift
//  HelloSwiftUI
//
//  Created by GilNam Park on 2021/06/18.
//

import SwiftUI

struct CustomViewModifier: ViewModifier {
    var borderColor: Color = .red
    
    func body(content: Content) -> some View {
        content
            .font(.title)
            .foregroundColor(.white)
            .padding()
            .background(Rectangle().fill(Color.gray))
            .border(borderColor, width: 2)
    }
}

struct MyModifier1: ViewModifier {
    func body(content: Content) -> some View {
        content.font(.title)
    }
}

struct MyModifier2: ViewModifier {
    func body(content: Content) -> some View {
        content.foregroundColor(.blue)
    }
}

extension View {
    func customViewModifier(borderColor: Color = .red) -> some View {
        self.modifier(CustomViewModifier(borderColor: borderColor))
    }
}
