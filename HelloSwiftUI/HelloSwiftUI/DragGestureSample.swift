//
//  DragGestureSample.swift
//  HelloSwiftUI
//
//  Created by GilNam Park on 2021/06/10.
//

import SwiftUI

struct DragGestureSample: View {
    
    @State var location = CGPoint.zero
    
    var body: some View {
        VStack {
            Color.red
                .frame(width: 100, height: 100, alignment: .center)
                .overlay(circle)
            
            Text("Location: \(Int(location.x)), \(Int(location.y))")
        }
        .coordinateSpace(name: "stack")
    }
    
    var circle: some View {
        Circle()
            .frame(width: 25, height: 25, alignment: .center)
            .gesture(drag)
            .padding(5)
    }
    
    var drag: some Gesture {
        DragGesture(coordinateSpace: .named("stack")).onChanged { info in
            location = info.location
        }
    }
}

struct DragGestureSample_Previews: PreviewProvider {
    static var previews: some View {
        DragGestureSample()
    }
}
