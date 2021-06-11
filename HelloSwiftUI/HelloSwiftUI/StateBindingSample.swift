//
//  StateBindingSample.swift
//  HelloSwiftUI
//
//  Created by GilNam Park on 2021/06/11.
//

import SwiftUI

struct StateBindingSample: View {
    
    @State private var isFavorite = true
    @State private var count = 0
    
    var body: some View {
        VStack(spacing: 30) {
            Toggle(isOn: $isFavorite, label: {
                Text("isFavorite : \(isFavorite.description)")
            })
            
            Stepper("Count: \(count)", value: $count)
        }
    }
}

struct StateBindingSample_Previews: PreviewProvider {
    static var previews: some View {
        StateBindingSample()
    }
}
