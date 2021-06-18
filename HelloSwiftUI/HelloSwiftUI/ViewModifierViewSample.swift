//
//  ViewModifierViewSample.swift
//  HelloSwiftUI
//
//  Created by GilNam Park on 2021/06/18.
//

import SwiftUI

struct ViewModifierViewSample: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("ModifiedContent").modifier(CustomViewModifier(borderColor: .blue))
            
            Text("My Modified").modifier(MyModifier1().concat(MyModifier2()))
            
            Text("ModifiedContent").customViewModifier(borderColor: .orange)
        }
    }
}

struct ViewModifierViewSample_Previews: PreviewProvider {
    static var previews: some View {
        ViewModifierViewSample()
    }
}
