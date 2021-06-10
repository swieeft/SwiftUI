//
//  GeometryReaderSample.swift
//  HelloSwiftUI
//
//  Created by GilNam Park on 2021/06/09.
//

import SwiftUI

struct GeometryReaderSample: View {
    var body: some View {
//        GeometryReader { geometry in
//            Text("Geometry Reader")
//                .font(.largeTitle).bold()
//                .position(x: geometry.size.width / 2, y: geometry.safeAreaInsets.top)
//
//            VStack {
//                Text("Size").bold()
//                Text("width : \(Int(geometry.size.width))")
//                Text("height : \(Int(geometry.size.height))")
//            }
//            .position(x: geometry.size.width / 2, y: geometry.size.height / 2.5)
//
//            VStack {
//                Text("SafeAreaInsets").bold()
//                Text("top : \(Int(geometry.safeAreaInsets.top))")
//                Text("bottom : \(Int(geometry.safeAreaInsets.bottom))")
//            }
//            .position(x: geometry.size.width / 2, y: geometry.size.height / 1.4)
//        }
//        .font(.title)
////        .frame(height: 500)
//        .border(Color.green, width: 5)
        
        HStack {
            Rectangle().fill(Color.yellow).frame(width: 30)
            
            VStack {
                Rectangle().fill(Color.blue).frame(height: 200)
                
                GeometryReader {
                    self.contents(geometry: $0)
                }
                .background(Color.green)
                .border(Color.red, width: 4)
            }
            .coordinateSpace(name: "VStackCS")
        }
        .coordinateSpace(name: "HStackCS")
    }
    
    func contents(geometry g: GeometryProxy) -> some View {
        VStack {
            Text(stringFormat(for: g.frame(in: .local).origin)).padding(.bottom)
            
            Text("Global").bold()
            Text(stringFormat(for: g.frame(in: .global).origin)).padding(.bottom)
            
            Text("Named VStackCS").bold()
            Text(stringFormat(for: g.frame(in: .named("VStackCS")).origin)).padding(.bottom)
            
            Text("Named HStackCS").bold()
            Text(stringFormat(for: g.frame(in: .named("HStackCS")).origin))
        }
        .frame(width: g.size.width, height: g.size.height)
    }
    
    func stringFormat(for point: CGPoint) -> String {
        String(format: "(x: %f, y: %f)", [point.x, point.y])
    }
}

struct GeometryReaderSample_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReaderSample()
    }
}
