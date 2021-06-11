//
//  DataStreamSample.swift
//  HelloSwiftUI
//
//  Created by GilNam Park on 2021/06/10.
//

import SwiftUI

struct DataStreamSample: View {
    @State private var framework: String = "UIKit"
    
    var body: some View {
        Button(framework) {
            self.framework = "SwiftUI"
        }
    }
}

struct DataStreamSample_Previews: PreviewProvider {
    static var previews: some View {
        DataStreamSample()
    }
}
