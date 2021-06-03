//
//  ImageSample.swift
//  HelloSwiftUI
//
//  Created by GilNam Park on 2021/06/02.
//

import SwiftUI

struct ImageSample: View {
    var body: some View {
        VStack(spacing: 20) {
            HStack {
                Image("swiftUI")
                
                Image("swiftUI")
                    .resizable(capInsets: .init(top: 0, leading: 50, bottom: 0, trailing: 0))
                    .frame(width: 150, height: 150)
                
                Image("swiftUI")
                    .resizable(resizingMode: .tile)
                    .frame(width: 200, height: 200)
            }
            
            HStack(spacing: 30) {
                Image("swiftUI")
                    .resizable()
                    .frame(width: 100, height: 150)
                
                Image("swiftUI")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 150)
                
                Image("swiftUI")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 100, height: 150)
                    .clipped()
            }
            
            HStack(spacing: 30) {
                Image("swiftUI").resizable()
                    .aspectRatio(CGSize(width: 1.6, height: 1), contentMode: .fit)
                    .frame(width: 150, height: 150)
                
                Image("swiftUI").resizable()
                    .aspectRatio(0.7, contentMode: .fill)
                    .frame(width: 150, height: 150)
                    .clipped()
            }
            
            HStack(spacing: 20) {
                Image("swiftUI").clipShape(Circle())
                
                Image("swiftUI").clipShape(Rectangle().inset(by: 10))
                
                Image("swiftUI").clipShape(Ellipse().path(in: CGRect(x: 10, y: 10, width: 80, height: 110)))
            }
            
            HStack(spacing: 20) {
                Image("swiftUI")
                Image("swiftUI").renderingMode(.original)
                Image("swiftUI").renderingMode(.template)
            }.foregroundColor(.red)
        }
    }
}

struct ImageSample_Previews: PreviewProvider {
    static var previews: some View {
        ImageSample()
    }
}
