//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by GilNam Park on 2021/06/02.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
//        Text("Hello, SwiftUI")
        Text("Hello\nSwiftUI\nhahaha")
            .foregroundColor(.green)
            .italic()
            .lineLimit(1)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
