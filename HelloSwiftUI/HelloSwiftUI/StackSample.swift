//
//  StackSample.swift
//  HelloSwiftUI
//
//  Created by GilNam Park on 2021/06/03.
//

import SwiftUI

struct StackSample: View {
    var body: some View {
        VStack {
            Text("도형 만들기").font(.largeTitle).fontWeight(.heavy)
            
            HStack {
                Text("둥근 모양").font(.title)
                Spacer()
            }
            
            ZStack {
                Rectangle().frame(height: 10)
                
                HStack {
                    Circle().fill(Color.yellow)
                    Ellipse().fill(Color.green)
                    Capsule().fill(Color.orange)
                    RoundedRectangle(cornerRadius: 30).fill(Color.gray)
                }
            }
            
            HStack {
                Text("각진 모양").font(.title)
                Spacer()
            }
            
            ZStack {
                Rectangle().frame(height: 10)
                
                HStack {
                    Color.red
                    Rectangle().fill(Color.blue)
                    RoundedRectangle(cornerRadius: 0).fill(Color.purple)
                }
            }
            
            Rectangle().fill(Color.green).frame(width: 150, height: 150).overlay(
                Rectangle().fill(Color.yellow).frame(width: 100, height: 100)
            )
            
            Rectangle().fill(Color.yellow).frame(width: 150, height: 150).background(
                Rectangle().fill(Color.green).frame(width: 200, height: 200)
            )
            
            Circle()
                .fill(Color.yellow.opacity(0.8))
                .frame(width: 250, height: 250)
                .overlay(Text("Joystick").font(.largeTitle))
                .overlay(Image(systemName: "arrow.up").font(.title).padding(), alignment: .top)
                .overlay(Image(systemName: "arrow.left").font(.title).padding(), alignment: .leading)
                .overlay(Image(systemName: "arrow.up.right.circle.fill").font(.title).padding(), alignment: .topTrailing)
                .background(Image(systemName: "arrow.down").font(.title).padding(), alignment: .bottom)
                .background(Image(systemName: "arrow.right").font(.title).padding(), alignment: .trailing)
            
        }.padding()
    }
}

struct StackSample_Previews: PreviewProvider {
    static var previews: some View {
        StackSample()
    }
}
