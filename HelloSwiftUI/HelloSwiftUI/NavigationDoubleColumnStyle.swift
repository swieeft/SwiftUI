//
//  NavigationDoubleColumnStyle.swift
//  HelloSwiftUI
//
//  Created by GilNam Park on 2021/06/08.
//

import SwiftUI

struct NavigationDoubleColumnStyle: View {
    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                NavigationLink(
                    destination: Text("디테일 뷰 영역").font(.largeTitle),
                    label: {
                        Text("마스터 뷰 메뉴 1").font(.title)
                    })
                
                NavigationLink(
                    destination: Text("디테일 뷰 영역").font(.largeTitle),
                    label: {
                        Text("마스터 뷰 메뉴 2").font(.title)
                    })
            }
            .navigationBarTitle("내비게이션 뷰 스타일")
            
            Text("디테일 뷰").font(.largeTitle)
        }
//        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct NavigationDoubleColumnStyle_Previews: PreviewProvider {
    static var previews: some View {
        NavigationDoubleColumnStyle()
    }
}
