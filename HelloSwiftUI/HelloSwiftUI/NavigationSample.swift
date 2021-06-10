//
//  NavigationSample.swift
//  HelloSwiftUI
//
//  Created by GilNam Park on 2021/06/08.
//

import SwiftUI

struct NavigationSample: View {
    var body: some View {
        let leadingItem = Button(action: {
            print("Leading item tapped")
        }, label: {
            Image(systemName: "bell").imageScale(.large)
        })
        
        let trailingItem = HStack(spacing: 20) {
            Button(action: {
                print("Trailing item tapped1")
            }, label: {
                Image(systemName: "gear").imageScale(.large)
            })
            
            Button(action: {
                print("Trailing item tapped2")
            }, label: {
                Image(systemName: "scribble").imageScale(.large)
            })
        }
        
        return NavigationView {
            Image("swiftUI")
                .navigationBarItems(leading: leadingItem, trailing: trailingItem)
                .navigationBarTitle("내비게이션 바 타이틀")
//                .navigationBarTitle("내비게이션 바 타이틀", displayMode: .large)
//                .navigationBarTitle("내비게이션 바 타이틀", displayMode: .inline)
        }
    }
}

struct NavigationSample_Previews: PreviewProvider {
    static var previews: some View {
        NavigationSample()
    }
}
