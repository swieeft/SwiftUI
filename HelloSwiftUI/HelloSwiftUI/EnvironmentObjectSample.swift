//
//  EnvironmentObjectSample.swift
//  HelloSwiftUI
//
//  Created by GilNam Park on 2021/06/11.
//

import SwiftUI

struct EnvironmentObjectSample: View {
    var body: some View {
        SuperView().environmentObject(User2())
    }
}

struct EnvironmentObjectSample_Previews: PreviewProvider {
    static var previews: some View {
        EnvironmentObjectSample()
    }
}

struct SuperView: View {
    var body: some View {
        SubView()
    }
}

struct SubView: View {
//    @EnvironmentObject var user: User2
    
    var body: some View {
//        Text(user.name.description)
        SubView2()
    }
}

struct SubView2: View {
    @EnvironmentObject var user: User2
    
    var body: some View {
        Text(user.name.description)
    }
}
