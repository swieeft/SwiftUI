//
//  FrameSample.swift
//  HelloSwiftUI
//
//  Created by GilNam Park on 2021/06/10.
//

import SwiftUI

struct FrameSample: View {
    var body: some View {
//        VStack(spacing: 10) {
//            Text("Frame")
//                .background(Color.yellow)
//                .frame(width: 100, height: 100, alignment: .top)
//                .border(Color.red, width: 1)
//
//            HStack {
//                Text("Frame")
//                    .background(Color.yellow)
//                    .frame(width: 100, height: 100, alignment: .leading)
//                    .border(Color.red, width: 1)
//
//                Text("Frame")
//                    .background(Color.yellow)
//                    .frame(width: 100, height: 100)
//                    .border(Color.red, width: 1)
//
//                Text("Frame")
//                    .background(Color.yellow)
//                    .frame(width: 100, height: 100, alignment: .trailing)
//                    .border(Color.red, width: 1)
//            }
//
//            Text("Frame")
//                .background(Color.yellow)
//                .frame(width: 100, height: 100, alignment: .bottom)
//                .border(Color.red, width: 1)
//
//            HStack {
//                Rectangle().fill(Color.red).frame(minWidth: 100)
//                Rectangle().fill(Color.orange).frame(maxWidth: 15)
//
//                Rectangle().fill(Color.yellow).frame(height: 150)
//                Rectangle().fill(Color.green).frame(maxHeight: .infinity)
//
//                Rectangle().fill(Color.blue).frame(maxWidth: .infinity, maxHeight: .infinity)
//                Rectangle().fill(Color.purple)
//            }
//            .frame(width: 300, height: 200)
//        }
        
//        VStack {
//            Text("Frame Modifier").font(.title).bold().frame(width: 80, height: 30)
//            Rectangle()
//            Color.red
//            Image("swiftUI").resizable()
//        }
        
        VStack {
            Text("Frame Modifier")
                .font(.title)
                .bold()
                .fixedSize()
                .frame(width: 80, height: 30)
            Rectangle().fixedSize()
            Color.red.fixedSize()
            Image("swiftUI").resizable().fixedSize()
            Rectangle().frame(idealWidth: 100).fixedSize()
            
            VStack(spacing: 50) {
                Group {
                    Text("FixedSize를 적용하면 글자가 생략되지 않습니다.")
                    
                    Text("FixedSize를 적용하면 글자가 생략되지 않습니다.").font(.title).fixedSize(horizontal: true, vertical: false)
                    
                    Text("FixedSize를 적용하면 글자가 생략되지 않습니다.").font(.title).fixedSize(horizontal: false, vertical: true)
                }
                .font(.title)
                .frame(width: 150, height: 50)
            }
        }
    }
}

struct FrameSample_Previews: PreviewProvider {
    static var previews: some View {
        FrameSample()
    }
}
