//
//  ObservableObject.swift
//  HelloSwiftUI
//
//  Created by GilNam Park on 2021/06/11.
//

import SwiftUI

struct ObservableObjectSample: View {
    @ObservedObject var user: User2
    
    var body: some View {
        VStack(spacing: 30) {
            Text(user.name)
            
            Button(action: {
                self.user.score += 1
            }, label: {
                Text(user.score.description)
            })
        }
    }
}

struct ObservableObjectSample_Previews: PreviewProvider {
    static var previews: some View {
        ObservableObjectSample(user: User2())
    }
}

class User2: ObservableObject {
    let name = "User Name"
//    @Published var score = 0
    
    let objectWillChange = ObjectWillChangePublisher()
    var score = 0 {
        willSet {
            objectWillChange.send()
        }
    }
}


