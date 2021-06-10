//
//  ListSample.swift
//  HelloSwiftUI
//
//  Created by GilNam Park on 2021/06/08.
//

import SwiftUI

struct ListSample: View {
    var body: some View {
//        List(0..<100) {
//            Text("\($0)")
//        }
//        List(["A", "B", "C", "D", "E", "F", "G"], id: \.self) {
//            Text("\($0)")
//        }
//        List([User(name: "Steve"), User(name: "James")], id: \.name) {
//            Text("\($0.name)")
//        }
//        List([User(name: "Steve"), User(name: "James")]) {
//            Text("\($0.name)")
//        }
//        List {
//            ForEach(0..<50) {
//                Text("\($0)")
//            }
//        }
//        List {
//            Text("번호")
//            ForEach(0..<50) {
//                Text("\($0)")
//            }
//        }
        let fruits = ["사과", "배", "포도", "바나나"]
        let drink = ["물", "우유", "탄산수"]
        
//        List {
//            Text("Fruits").font(.largeTitle)
//            ForEach(fruits, id: \.self) {
//                Text("\($0)")
//            }
//
//            Text("Drink").font(.largeTitle)
//            ForEach(drink, id: \.self) {
//                Text("\($0)")
//            }
//        }
        
        let titles = ["Fruits", "Drink"]
        let data = [fruits, drink]
        
        List {
            ForEach(data.indices) { index in
                Section(header: Text(titles[index]).font(.title),
                        footer:
                            HStack {
                                Spacer()
                                Text("\(data[index].count)건")
                            }) {
                    ForEach(data[index], id: \.self) {
                        Text($0)
                    }
                }
            }
        }
        .listStyle(InsetGroupedListStyle())
        .environment(\.horizontalSizeClass, .regular)
    }
}

struct ListSample_Previews: PreviewProvider {
    static var previews: some View {
        ListSample()
    }
}

//struct User: Hashable {
//    let name: String
//}

struct User: Identifiable {
    let id = UUID()
    let name: String
}

