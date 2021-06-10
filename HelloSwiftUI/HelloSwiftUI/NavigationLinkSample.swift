//
//  NavigationLinkSample.swift
//  HelloSwiftUI
//
//  Created by GilNam Park on 2021/06/08.
//

import SwiftUI

struct NavigationLinkSample: View {
    var body: some View {
        
        let destination = Text("Destination").navigationBarBackButtonHidden(true)
        
        NavigationView {
            NavigationLink(
                destination: destination,
                label: {
                    Image("swiftUI").renderingMode(.original)
                })
                .buttonStyle(PlainButtonStyle())
                .navigationTitle("내비게이션 링크")
//                .navigationBarHidden(true)
        }
    }
}

struct NavigationLinkSample_Previews: PreviewProvider {
    static var previews: some View {
        NavigationLinkSample()
    }
}
