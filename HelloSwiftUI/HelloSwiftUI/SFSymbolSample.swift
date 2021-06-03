//
//  SFSymbolSample.swift
//  HelloSwiftUI
//
//  Created by GilNam Park on 2021/06/03.
//

import SwiftUI

struct SFSymbolSample: View {
    var body: some View {
        VStack(spacing: 30) {
            HStack(spacing: 30) {
                Image(systemName: "star.circle")
                Image(systemName: "star.circle.fill")
            }
            
            HStack(spacing: 30) {
                Image(systemName: "book.fill").imageScale(.small).foregroundColor(.red)
                Image(systemName: "book.fill").imageScale(.medium).foregroundColor(.green)
                Image(systemName: "book.fill").imageScale(.large).foregroundColor(.blue)
            }
            
            HStack(spacing: 30) {
                Image(systemName: "speaker.3").font(.body)
                Image(systemName: "speaker.3").font(.title)
                Image(systemName: "speaker.3").font(.system(size: 40))
                Image(systemName: "speaker.3").imageScale(.large).font(.system(size: 40))
            }
            
            HStack(spacing: 30) {
                Image(systemName: "arrow.up").font(Font.title.weight(.black))
                Image(systemName: "arrow.left").font(Font.title.weight(.semibold))
                Image(systemName: "arrow.down").font(Font.title.weight(.light))
                Image(systemName: "arrow.right").font(Font.title.weight(.ultraLight))
            }
        }
    }
}

struct SFSymbolSample_Previews: PreviewProvider {
    static var previews: some View {
        SFSymbolSample()
    }
}
